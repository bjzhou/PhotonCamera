.class final Ltmg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ltmo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltmo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ltmg;->a:Ltmo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ltmo;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static A(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_5d

    nop

    nop

    :goto_0
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ltkh;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p3, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_1f

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lt v2, p0, :cond_1

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_c
    if-lt p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_3
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_e
    invoke-static {v0}, Ltjs;->ab(I)I

    move-result v0

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

    :goto_f
    invoke-virtual {p3, p0, v0}, Ltjs;->B(II)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move p0, v2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_1b
    goto/32 :goto_51

    nop

    nop

    :goto_1c
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_1f
    goto/32 :goto_14

    nop

    nop

    :goto_20
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p0, v0}, Ltjs;->B(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v2, p3, :cond_5

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_25
    add-int/lit8 v2, v2, 0x1

    nop

    nop

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

    :goto_26
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_6

    nop

    nop

    :goto_29
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2a
    if-lt v2, p0, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2c
    move p3, p0

    nop

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    :goto_2e
    goto/32 :goto_16

    nop

    :goto_2f
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    :goto_32
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_33
    check-cast p3, Ltjs;

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

    nop

    :goto_34
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_35
    if-nez p3, :cond_8

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

    :cond_8
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_36
    instance-of v0, p1, Ltkh;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    :goto_38
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_39
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_3b
    goto/16 :goto_5f

    nop

    :goto_3c
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3f
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_2e

    nop

    nop

    :goto_42
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    nop

    :goto_43
    const/4 v1, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_44
    if-lt v2, p3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_a
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_47
    move p3, p0

    nop

    nop

    :goto_48
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez p3, :cond_b

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

    :cond_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4c
    goto :goto_48

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v0}, Ltjs;->ab(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p3, Ljava/lang/Integer;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3f

    nop

    nop

    :goto_55
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_59
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

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

    nop

    :goto_5a
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5b
    const v1, 0x4

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

    :goto_5c
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_5d
    const v0, 0x2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_60
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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
.end method

.method public static B(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_42

    nop

    nop

    :goto_9
    add-int/lit8 p0, p0, 0x1

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

    :goto_a
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    move p3, p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    move p0, v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, v1}, Ltjs;->E(J)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->D(IJ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    add-int/lit8 p0, p0, 0x1

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

    :goto_16
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_20
    if-lt v2, p0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_22
    instance-of v0, p1, Ltlg;

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

    :goto_23
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x14

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_26
    goto/32 :goto_34

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_28
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_2f
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_30
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, p0}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget p0, p1, Ltlg;->c:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_35
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0, v1}, Ltjs;->ad(J)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_38
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_39
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3a
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3b
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3d
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->D(IJ)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p3, Ltjs;

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

    :goto_3f
    if-nez p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Ltlg;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_41
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

    nop

    :cond_5
    goto/32 :goto_19

    nop

    :goto_42
    iget v0, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_43
    invoke-static {v0, v1}, Ltjs;->ad(J)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_45
    if-lt v2, p3, :cond_6

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

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_b

    nop

    :goto_47
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_48
    add-int v0, v0, v1

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

    :goto_49
    goto/16 :goto_8

    nop

    :goto_4a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v0, v1}, Ltjs;->E(J)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-lt v2, p3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4e
    if-lt v2, p0, :cond_8

    nop

    goto/32 :goto_47

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_51
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_53
    goto/32 :goto_32

    nop

    nop

    :goto_54
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_56
    if-lt p0, v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_a

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

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

    :goto_5d
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lt p0, v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_61
    iget p3, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static a(Ljava/util/List;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/lit8 p0, p0, 0x4

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

.method static b(Ljava/util/List;)I
    .locals 0

    goto/32 :goto_2

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
    mul-int/lit8 p0, p0, 0x8

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
    invoke-interface {p0}, Ljava/util/List;->size()I

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

.method static c(ILjava/lang/Object;Ltmf;)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-static {p0}, Ltjs;->Z(I)I

    move-result p0

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

    :goto_1
    check-cast p1, Ltld;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr p0, p1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    instance-of v0, p1, Ltld;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Ltjs;->N(ILtld;)I

    move-result p0

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

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ltlq;

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

    :goto_a
    invoke-static {p1, p2}, Ltjs;->R(Ltlq;Ltmf;)I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method static d(Ljava/util/List;)I
    .locals 4

    goto/32 :goto_9

    nop

    nop

    :goto_0
    instance-of v2, p0, Ltkh;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v2, v1

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v3}, Ltjs;->U(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ltkh;

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

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    check-cast v3, Ljava/lang/Integer;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    add-int/2addr v2, v3

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v2, v3

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    move v2, v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_18

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v3}, Ltjs;->U(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_23
    invoke-virtual {p0, v1}, Ltkh;->d(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method static e(Ljava/util/List;)I
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    :goto_2
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-static {v3, v4}, Ltjs;->W(J)I

    move-result v3

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

    :goto_5
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Ltlg;->f(I)J

    move-result-wide v3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v3, v4}, Ltjs;->W(J)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return v2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    :goto_13
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v2, p0, Ltlg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    add-int/2addr v2, v3

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto :goto_1d

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v2, v1

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_22
    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    check-cast p0, Ltlg;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method static f(Ljava/util/List;)I
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    invoke-static {v3}, Ltjs;->ab(I)I

    move-result v3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

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

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    invoke-static {v3}, Ltjs;->ab(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v3, Ljava/lang/Integer;

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

    nop

    :goto_12
    const v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_14
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v2, p0, Ltkh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    return v2

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v2, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    return v1

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v1}, Ltkh;->d(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_23

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    move v2, v1

    nop

    :goto_23
    goto/32 :goto_2

    nop

    nop

    :goto_24
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v2, :cond_4

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

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static g(Ljava/lang/Object;ILjava/util/List;Ltkk;Ljava/lang/Object;Ltmo;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    move v2, v1

    nop

    :goto_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p4

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1, v4, p4, p5}, Ltmg;->h(Ljava/lang/Object;IILjava/lang/Object;Ltmo;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    invoke-interface {p3, v0}, Ltkk;->a(I)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_f

    nop

    nop

    :goto_f
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    :goto_13
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Ljava/lang/Integer;

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

    :goto_15
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

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

    :goto_16
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    const v0, 0xe

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    goto/16 :goto_4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    :goto_1f
    return-object p4

    nop

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    :goto_21
    if-nez v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_23
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

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

    :goto_26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_29
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p4

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    :goto_2c
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0, p1, v0, p4, p5}, Ltmg;->h(Ljava/lang/Object;IILjava/lang/Object;Ltmo;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    :goto_30
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p3, v4}, Ltkk;->a(I)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_35
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_27

    nop

    nop

    nop
.end method

.method static h(Ljava/lang/Object;IILjava/lang/Object;Ltmo;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-long v0, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-virtual {p4, p0}, Ltmo;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_7
    return-object p3

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4, p3, p1, v0, v1}, Ltmo;->d(Ljava/lang/Object;IJ)V

    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method static i(ILjava/util/List;)I
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Ltjs;->au(I)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return p1

    nop

    nop

    nop
.end method

.method static j(ILjava/util/List;)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    return p1

    nop

    :goto_6
    mul-int/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ltjs;->av(I)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static synthetic k(Ljava/util/List;)I
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-static {v3}, Ltjs;->L(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    check-cast p0, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    invoke-static {v3}, Ltjs;->L(I)I

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    move v2, v1

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    move v2, v1

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    :goto_13
    instance-of v2, p0, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v1}, Ltkh;->d(I)I

    move-result v3

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    const v0, 0xe

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    :goto_18
    add-int/2addr v2, v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_c

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    if-lt v1, v0, :cond_4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

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

    :goto_21
    goto/16 :goto_e

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method public static synthetic l(Ljava/util/List;)I
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    check-cast p0, Ltlg;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v3, Ljava/lang/Long;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    move v2, v1

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    return v2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    instance-of v2, p0, Ltlg;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    nop

    :goto_13
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v1, v1, 0x1

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

    nop

    :goto_15
    invoke-static {v3, v4}, Ltjs;->ad(J)I

    move-result v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_17
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Ltlg;->f(I)J

    move-result-wide v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    if-lt v1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v3, v4}, Ltjs;->ad(J)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_11

    nop

    nop

    :goto_25
    const v1, 0x1e

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static m(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Ltmk;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p1, Ltjx;->b:Ltmk;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    iget-object v2, p1, Ltjx;->b:Ltmk;

    nop

    nop

    nop

    goto/32 :goto_8

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v1}, Ltmk;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto :goto_e

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ltjx;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    :goto_19
    invoke-virtual {p0, v0}, Ltjx;->f(Ljava/util/Map$Entry;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v2}, Ltjx;->f(Ljava/util/Map$Entry;)V

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1f

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

    :goto_1e
    invoke-virtual {p1}, Ltmk;->a()Ljava/lang/Iterable;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    iget-object v0, p1, Ltjx;->b:Ltmk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-static {p0}, Lshf;->j(Ljava/lang/Object;)Ltjx;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Lshf;->i(Ljava/lang/Object;)Ltjx;

    move-result-object p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v1, v1, 0x1

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

    nop
.end method

.method static n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_35

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v1, v3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v4, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_15

    nop

    nop

    :goto_7
    iget v6, p1, Ltmp;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Ltmp;->c(I)V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_20

    nop

    :goto_e
    iget-object v3, p1, Ltmp;->c:[I

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

    :goto_f
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    iget-object v4, v0, Ltmp;->d:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, v0}, Ltmo;->g(Ljava/lang/Object;Ltmp;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5, v2, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p1, Ltmp;->c:[I

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

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    iget-object v4, v0, Ltmp;->d:[Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Ltmo;->f(Ljava/lang/Object;)Ltmp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_17
    iget v3, p1, Ltmp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    add-int/2addr v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iget v6, p1, Ltmp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1a
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Ltmp;->b:I

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

    nop

    :goto_1d
    if-nez v1, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ltmo;->f(Ljava/lang/Object;)Ltmp;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    iget-object v5, p1, Ltmp;->d:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget-object v1, Ltmp;->a:Ltmp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_24
    iget-object v3, v0, Ltmp;->c:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget v1, v0, Ltmp;->b:I

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, v1}, Ltmp;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v3, v2, v4, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput v1, v0, Ltmp;->b:I

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v1, Ltmp;->a:Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    iget v3, p1, Ltmp;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2c
    iget-object v4, v0, Ltmp;->c:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    iget v5, v0, Ltmp;->b:I

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    iget p1, p1, Ltmp;->b:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, p1}, Ltmp;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_32
    invoke-virtual {v1, v0}, Ltmp;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_33
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0xc

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Ltmp;->b()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_36
    const v1, 0x18

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    iget v5, v0, Ltmp;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_38
    invoke-static {v3, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    iget p1, p1, Ltmp;->b:I

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

    :goto_3a
    iget v0, v0, Ltmp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3b
    sget-object v1, Ltmp;->a:Ltmp;

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

    :goto_3c
    invoke-direct {v0, v1, v3, v4, p1}, Ltmp;-><init>(I[I[Ljava/lang/Object;Z)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3d
    iget-object v3, p1, Ltmp;->d:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v5, v0, Ltmp;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    new-instance v0, Ltmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public static o(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xc

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_4
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Ltjs;

    nop

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

    nop

    :goto_9
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p3, :cond_3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_4

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    move p0, v2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_11
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_12
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v2}, Ltjb;->g(I)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_15
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_18
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

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

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_32

    nop

    nop

    :goto_1d
    goto/32 :goto_4f

    nop

    nop

    :goto_1e
    add-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_42

    nop

    nop

    :goto_20
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_25
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    :goto_27
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    instance-of v0, p1, Ltjb;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p3}, Ltjs;->j(B)V

    goto/32 :goto_e

    nop

    nop

    :goto_2c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x2

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

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p3}, Ltjs;->j(B)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    :goto_31
    return-void

    nop

    nop

    :goto_32
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p1, Ltjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 p3, p3, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_38
    iget p3, p1, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    iget p0, p1, Ltjb;->b:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-lt v2, p3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    if-lt p0, v0, :cond_7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_42
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p3, Ltjs;

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

    :goto_45
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_31

    nop

    nop

    :goto_48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_4b
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_f

    nop

    nop

    :goto_4c
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v0, p1, Ltjb;->b:I

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

    :goto_4f
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move p3, p0

    nop

    nop

    :goto_51
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lt v2, p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_53
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p3, p0, v0}, Ltjs;->l(IZ)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, p0}, Ltjb;->g(I)Z

    goto/32 :goto_37

    nop

    nop

    :goto_56
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_57
    if-lt v2, p0, :cond_a

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

    nop

    :cond_a
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0x9

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_59
    if-lt v2, p3, :cond_b

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

    nop

    :cond_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p1, v2}, Ltjb;->g(I)Z

    move-result v0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5b
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5c
    check-cast p3, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p3, p0, v0}, Ltjs;->l(IZ)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_51

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static p(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_25

    nop

    :goto_1
    goto/32 :goto_56

    nop

    nop

    :goto_2
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_45

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v2}, Ltjt;->d(I)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    check-cast p1, Ltjt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p1, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_e
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_f
    if-lt v2, p0, :cond_0

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

    :cond_0
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p1, Ltjt;->b:I

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_13
    goto/16 :goto_37

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0, v1}, Ltjs;->ak(D)V

    goto/32 :goto_48

    nop

    nop

    :goto_17
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1d
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->aj(ID)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, p0}, Ltjt;->d(I)D

    goto/32 :goto_47

    nop

    nop

    :goto_24
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_25
    goto/32 :goto_c

    nop

    nop

    :goto_26
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_28

    nop

    :goto_27
    move p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2a
    if-lt p0, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lt v2, p3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_6
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v0, Ljava/lang/Double;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_32
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->aj(ID)V

    goto/32 :goto_2b

    nop

    nop

    :goto_35
    check-cast p3, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_36
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0, v1}, Ltjs;->ak(D)V

    goto/32 :goto_1f

    nop

    nop

    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-lt p0, v0, :cond_7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    :goto_3e
    goto :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_40
    if-lt v2, p3, :cond_8

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_41
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_42
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_43
    if-lt v2, p0, :cond_9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_46
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int/lit8 p3, p3, 0x8

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5b

    nop

    nop

    :goto_4c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    instance-of v0, p1, Ltjt;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4f
    move p0, v2

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

    :goto_50
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    :goto_51
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_52
    add-int/lit8 p3, p3, 0x8

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
    add-int v0, v0, v1

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

    nop

    :goto_54
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v2}, Ltjt;->d(I)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget p3, p1, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

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

    :goto_59
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez p3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_b
    goto/32 :goto_1c

    nop

    nop

    :goto_5c
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

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

    :goto_5d
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5f
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public static q(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_54

    nop

    nop

    :goto_0
    check-cast p0, Ltjs;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    :goto_3
    goto/16 :goto_36

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    if-lt v2, p3, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p3, p0, v0}, Ltjs;->s(II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_a
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move p0, v2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p3}, Ltjs;->t(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_e
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_12
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

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

    :goto_14
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Ltkh;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_18
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_b

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v2, p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_1d
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p3, p0, v0}, Ltjs;->s(II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_24
    move p3, p0

    nop

    :goto_25
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_27
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_28
    const v1, 0xc

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    goto :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

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

    :goto_31
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_34
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_35
    goto/16 :goto_4d

    nop

    nop

    :goto_36
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_17

    nop

    nop

    :goto_39
    check-cast v0, Ljava/lang/Integer;

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

    :goto_3a
    if-lt p0, v0, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p3, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0}, Ltjs;->L(I)I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-lt v2, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-lt v2, p0, :cond_7

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_7
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_44
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_45
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_46
    check-cast p1, Ltkh;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_47
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_48
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_49
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p3, Ltjs;

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

    nop

    :goto_4b
    invoke-virtual {p0, p3}, Ltjs;->t(I)V

    goto/32 :goto_34

    nop

    nop

    :goto_4c
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_4d
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast p3, Ltjs;

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

    :goto_52
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4f

    nop

    :goto_53
    check-cast p3, Ljava/lang/Integer;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_54
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_55
    if-nez p3, :cond_a

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v2, 0x0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_59
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_5a
    invoke-static {v0}, Ltjs;->L(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5d
    if-lt p0, v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_60
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static r(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_41

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    move p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    goto :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_8
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9
    if-lt v2, p0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    add-int/lit8 p3, p3, 0x4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_c
    instance-of v0, p1, Ltkh;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_e
    invoke-virtual {p3, p0, v0}, Ltjs;->o(II)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt p0, v0, :cond_1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_11
    check-cast p3, Ltjs;

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

    nop

    :goto_12
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_13
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_15
    goto/32 :goto_2e

    nop

    nop

    :goto_16
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_19
    check-cast p1, Ltkh;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

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

    :goto_1b
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p3, Ljava/lang/Integer;

    nop

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

    :goto_1e
    goto/16 :goto_43

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v2, v2, 0x1

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

    :goto_24
    if-lt v2, p3, :cond_3

    nop

    goto/32 :goto_7

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

    nop

    nop

    :goto_25
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt p0, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_5

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p3, :cond_6

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_47

    nop

    nop

    :goto_2e
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

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

    :goto_30
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lt v2, p3, :cond_7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p3}, Ltjs;->p(I)V

    goto/32 :goto_23

    nop

    nop

    :goto_33
    add-int/lit8 v2, v2, 0x1

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

    :goto_34
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_35
    goto/32 :goto_39

    nop

    nop

    :goto_36
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_59

    nop

    :goto_38
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

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

    :goto_3a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3b
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    :goto_3d
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3e
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_40
    goto/16 :goto_15

    nop

    nop

    :goto_41
    goto/32 :goto_54

    nop

    nop

    :goto_42
    move p3, p0

    nop

    nop

    :goto_43
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez p3, :cond_8

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

    :cond_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_47
    add-int/lit8 p3, p3, 0x4

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

    :goto_48
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4a
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4c
    goto/32 :goto_21

    nop

    :goto_4d
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4e
    if-lt v2, p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0, p3}, Ltjs;->p(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_52
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_54
    iget p3, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_55
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_57
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    goto/32 :goto_a

    nop

    nop

    :goto_58
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5c
    if-lez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_b
    goto/32 :goto_20

    nop

    :goto_5d
    invoke-virtual {p3, p0, v0}, Ltjs;->o(II)V

    goto/32 :goto_5e

    nop

    nop

    :goto_5e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5f
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public static s(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    :goto_3
    goto/16 :goto_4a

    nop

    nop

    :goto_4
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_a
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1c

    nop

    :goto_d
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_10
    if-lt v2, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_12
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_13
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0, v1}, Ltjs;->r(J)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

    :goto_17
    if-nez p3, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    if-lt v2, p0, :cond_4

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_4c

    nop

    nop

    :goto_1e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0, v1}, Ltjs;->r(J)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p0}, Ltlg;->f(I)J

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x2

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

    nop

    :goto_25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 p3, p3, 0x8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lt v2, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    instance-of v0, p1, Ltlg;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p3, Ltjs;

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

    :goto_2d
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 p3, p3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_32
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    :goto_35
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_36
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_38
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget p3, p1, Ltlg;->c:I

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

    :goto_3e
    iget v0, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->q(IJ)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_42
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_43
    iget p0, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_45
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    goto :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_48
    check-cast p1, Ltlg;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_49
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3e

    nop

    nop

    :goto_4b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    :cond_8
    goto/32 :goto_25

    nop

    nop

    :goto_4d
    if-lt p0, v0, :cond_9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_4f
    if-lt v2, p3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p3, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_51
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez p3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_b
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_57
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->q(IJ)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_59
    check-cast p0, Ltjs;

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

    nop

    :goto_5a
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_5b
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_29

    nop

    :goto_5f
    goto/32 :goto_52

    nop

    nop
.end method

.method public static t(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_21

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Ltjs;

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

    nop

    :goto_4
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ltjz;->d(I)F

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a
    iget p0, p1, Ltjz;->c:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p3, Ljava/lang/Float;

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

    :goto_c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_d
    invoke-virtual {p0, p3}, Ltjs;->am(F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_f
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_9

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_16
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    :goto_1a
    if-lt v2, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 p3, p3, 0x4

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1f
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_21
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_52

    nop

    nop

    :goto_23
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_26
    iget p3, p1, Ltjz;->c:I

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

    :goto_27
    if-lt v2, p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_34

    nop

    nop

    :goto_29
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v2}, Ltjz;->d(I)F

    move-result v0

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

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 p3, p3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2f
    if-lt p0, v0, :cond_5

    nop

    goto/32 :goto_59

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_31
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32
    if-lt v2, p0, :cond_6

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_6
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    :goto_34
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p3, p0, v0}, Ltjs;->al(IF)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p3}, Ltjs;->am(F)V

    goto/32 :goto_3a

    nop

    nop

    :goto_37
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3d
    if-nez p1, :cond_7

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    :goto_3e
    goto/32 :goto_29

    nop

    :goto_3f
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move p3, p0

    nop

    :goto_41
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_42
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_43
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Ltjz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_1e

    nop

    nop

    :goto_48
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p3, p0, v0}, Ltjs;->al(IF)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4c
    if-lt v2, p3, :cond_8

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_9

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-lt p0, v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1, v2}, Ltjz;->d(I)F

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_52
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    instance-of v0, p1, Ltjz;

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

    nop

    :goto_56
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_57
    const/4 v2, 0x0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_41

    nop

    nop

    :goto_59
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez p3, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_b
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5c
    iget v0, p1, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop
.end method

.method public static u(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_5e

    nop

    nop

    :goto_0
    goto/16 :goto_11

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ltjs;->L(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6
    move p3, p0

    nop

    :goto_7
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_5c

    nop

    :goto_9
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p3}, Ltjs;->t(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_b
    if-lt p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_d
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v2, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_11
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

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

    :goto_13
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v2, p0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_15
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

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

    :goto_16
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_18
    instance-of v0, p1, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p3, p1, Ltkh;->c:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p3, p0, v0}, Ltjs;->s(II)V

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_20
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_24
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lt p0, v0, :cond_4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v2, p3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    invoke-virtual {p3, p0, v0}, Ltjs;->s(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_2b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p3, :cond_6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_30
    add-int/2addr p3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_31
    if-nez p3, :cond_7

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_33
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_34
    if-lt v2, p3, :cond_8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_36
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move p3, p0

    nop

    nop

    :goto_3a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3c
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3d
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_1

    nop

    :goto_3f
    goto/32 :goto_31

    nop

    nop

    :goto_40
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_41
    const/4 v1, 0x2

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

    :goto_42
    add-int v0, v0, v1

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

    :goto_43
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_44
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_46
    move p0, v2

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

    :goto_47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_48
    invoke-static {v0}, Ltjs;->L(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_4b
    if-eqz v0, :cond_9

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4d
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p3}, Ltjs;->t(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p3, Ltjs;

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

    :goto_50
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_3

    nop

    :goto_54
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_55
    if-nez v0, :cond_a

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_57
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_59
    add-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_5b
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_12

    nop

    nop

    :goto_5d
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5e
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lez v0, :cond_b

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

    :cond_b
    goto/32 :goto_2

    nop

    :goto_60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop
.end method

.method public static v(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Ltjs;->ad(J)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_3
    if-lt v2, p3, :cond_0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_5
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_8
    if-lt p0, v0, :cond_1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ltjs;->ad(J)I

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b
    if-lt v2, p0, :cond_3

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0, v1}, Ltjs;->E(J)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_f
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_10
    check-cast p0, Ltjs;

    nop

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

    :goto_11
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_5d

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->D(IJ)V

    goto/32 :goto_46

    nop

    nop

    :goto_14
    goto/16 :goto_34

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_17
    if-lt v2, p0, :cond_5

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p1, Ltlg;->c:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->D(IJ)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1c
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_1e
    goto/16 :goto_59

    nop

    nop

    :goto_1f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_22
    iget p3, p1, Ltlg;->c:I

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

    :goto_23
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_26
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_48

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_2a
    invoke-virtual {p1, p0}, Ltlg;->f(I)J

    move-result-wide v0

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

    :goto_2b
    add-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    instance-of v0, p1, Ltlg;

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

    :goto_30
    if-lt v2, p3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_7
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_34
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p3, Ljava/lang/Long;

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

    nop

    nop

    :goto_37
    check-cast p1, Ltlg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_38
    check-cast p0, Ltjs;

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

    :goto_39
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_27

    nop

    :goto_3d
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p3, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_40
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_41
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_35

    nop

    nop

    :goto_44
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_45
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    :goto_48
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move p0, v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4d
    if-lt p0, v0, :cond_a

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_50
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_51
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v0, v1}, Ltjs;->E(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget p0, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez p3, :cond_b

    nop

    goto/32 :goto_15

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

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

    :goto_56
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_58
    move p3, p0

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5a
    add-int/2addr p3, v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5b
    const v0, 0x14

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5c
    goto/16 :goto_43

    nop

    :goto_5d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    nop

    nop

    :goto_60
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static w(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

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

    nop

    :goto_1
    instance-of v0, p1, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_2
    invoke-virtual {p3, p0, v0}, Ltjs;->o(II)V

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

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

    :goto_5
    move p0, v2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_8
    check-cast p1, Ltkh;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p3}, Ltjs;->p(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_e
    if-lt v2, p0, :cond_1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_f
    move p0, v2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_15
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v2, p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    :goto_17
    if-nez p3, :cond_3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p3}, Ltjs;->p(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_3e

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5e

    nop

    :goto_1f
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_24
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_5

    nop

    nop

    :goto_25
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_27
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_28
    iget p3, p1, Ltkh;->c:I

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
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_2a
    add-int/lit8 p3, p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    goto/32 :goto_42

    nop

    nop

    :goto_2d
    goto :goto_38

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_16

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

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v2, p0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_37
    move p3, p0

    nop

    :goto_38
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_39
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    if-lt p0, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_28

    nop

    nop

    :goto_3f
    invoke-virtual {p3, p0, v0}, Ltjs;->o(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_2a

    nop

    nop

    :goto_41
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_42
    add-int/lit8 p3, p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_43
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_46
    if-lt p0, v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v1, 0x2

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

    :goto_4a
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_4b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-lt v2, p3, :cond_9

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_34

    nop

    nop

    :goto_4f
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    nop

    :goto_51
    return-void

    nop

    nop

    :goto_52
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_53
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_1d

    nop

    nop

    :goto_55
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p3, Ltjs;

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

    :goto_57
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5a
    goto :goto_4e

    nop

    :goto_5b
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5c
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_52

    nop

    nop

    :goto_5f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static x(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    move p0, v2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4
    if-lt v2, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_46

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_13
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    :goto_14
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->q(IJ)V

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p3, :cond_1

    nop

    goto/32 :goto_46

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1a
    instance-of v0, p1, Ltlg;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v0, p1, Ltlg;->c:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Ltlg;->f(I)J

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    check-cast p0, Ltjs;

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

    nop

    :goto_22
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_10

    nop

    :goto_27
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_2

    nop

    :goto_29
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v1, 0xf

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

    :goto_2c
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2d
    add-int/lit8 p3, p3, 0x8

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_2f
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lt v2, p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lt p0, v0, :cond_4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    :goto_34
    move p3, p0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_5e

    nop

    nop

    :goto_36
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_54

    nop

    nop

    :goto_39
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p3, Ljava/lang/Long;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_3f
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_52

    nop

    nop

    :goto_42
    move p0, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_43
    if-lt p0, v0, :cond_7

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p1, Ltlg;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

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

    :goto_48
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4a
    iget p0, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_9

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_30

    nop

    :goto_4e
    invoke-virtual {p0, v0, v1}, Ltjs;->r(J)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget p3, p1, Ltlg;->c:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0, v1}, Ltjs;->r(J)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v1, 0x2

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

    :goto_52
    add-int/lit8 p3, p3, 0x8

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

    nop

    :goto_53
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_55
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->q(IJ)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p3, Ltjs;

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

    :goto_58
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_5b
    if-lt v2, p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5c
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lt v2, p3, :cond_b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_b
    goto/32 :goto_3b

    nop

    nop
.end method

.method public static y(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_4e

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4f

    nop

    nop

    :goto_2
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p3}, Ltjs;->ap(I)V

    goto/32 :goto_60

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    goto/32 :goto_5d

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_a
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    if-lt v2, p3, :cond_2

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_11
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_13
    goto/32 :goto_55

    nop

    nop

    :goto_14
    if-lt v2, p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    instance-of v0, p1, Ltkh;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p3, Ltjs;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1e
    check-cast v0, Ljava/lang/Integer;

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

    nop

    :goto_1f
    invoke-virtual {p3, p0, v0}, Ltjs;->ao(II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_22
    if-lt v2, p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    iget p0, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_25
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p0}, Ltkh;->d(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_7

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 p0, p0, 0x1

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

    nop

    :goto_2c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget p3, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2e
    check-cast p1, Ltkh;

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

    :goto_2f
    move p3, p0

    nop

    nop

    :goto_30
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result v0

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

    :goto_34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

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

    :goto_35
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_36
    check-cast p0, Ltjs;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0}, Ltjs;->U(I)I

    move-result v0

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

    :goto_38
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_39
    check-cast p0, Ltjs;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3d
    invoke-static {v0}, Ltjs;->U(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_3e
    add-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v2}, Ltkh;->d(I)I

    move-result p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-lt v2, p0, :cond_8

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_9

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    :goto_42
    if-lt p0, v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_43
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

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

    :goto_44
    invoke-virtual {p3, p0, v0}, Ltjs;->ao(II)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_c

    nop

    nop

    :goto_4a
    goto/32 :goto_2d

    nop

    nop

    :goto_4b
    invoke-virtual {p0, p3}, Ltjs;->ap(I)V

    goto/32 :goto_35

    nop

    nop

    :goto_4c
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_47

    nop

    nop

    :goto_50
    if-nez v0, :cond_b

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_b
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_51
    add-int/2addr p3, v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_54
    iget v0, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_3b

    nop

    nop

    :goto_5c
    goto :goto_5b

    nop

    nop

    :goto_5d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5e
    check-cast p3, Ljava/lang/Integer;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_60
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

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

    nop
.end method

.method public static z(ILjava/util/List;Lqnt;Z)V
    .locals 3

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    add-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_4d

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p3, Ljava/lang/Long;

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

    :goto_9
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    if-lt p0, v0, :cond_2

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p3, Ltjs;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ljava/lang/Long;

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

    :goto_f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v2, p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v2, p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_61

    nop

    nop

    :goto_12
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->aq(IJ)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_15
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p0, Ltjs;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p0, p0, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p3, p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_1c
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Ltjs;->W(J)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    check-cast p3, Ltjs;

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

    :goto_20
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d

    nop

    nop

    :goto_24
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr p3, v0

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

    nop

    :goto_26
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto :goto_23

    nop

    nop

    :goto_28
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p0, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v0, v1}, Ltjs;->ar(J)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2c
    if-lt v2, p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    check-cast p3, Ltjs;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

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

    :goto_32
    invoke-virtual {p3, p0, v0, v1}, Ltjs;->aq(IJ)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, p0}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_7

    nop

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

    :cond_7
    goto/32 :goto_4

    nop

    :goto_37
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_38
    if-lt p0, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_39
    iget p0, p1, Ltlg;->c:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v0, v1}, Ltjs;->ar(J)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p3, p1, Ltlg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p3, p0, v1}, Ltjs;->A(II)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    iget v0, p1, Ltlg;->c:I

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

    :goto_41
    if-lt v2, p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_42
    if-nez p3, :cond_a

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez p3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_46
    invoke-static {v0, v1}, Ltjs;->W(J)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_47
    goto/16 :goto_5e

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_4a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move p0, v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    :goto_4d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    instance-of v0, p1, Ltlg;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_50
    move p3, p0

    nop

    :goto_51
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_52
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_53
    goto :goto_51

    nop

    :goto_54
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, p3}, Ltjs;->C(I)V

    :goto_58
    goto/32 :goto_39

    nop

    nop

    :goto_59
    const v0, 0x8

    nop

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

    :goto_5a
    iget-object p0, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v2}, Ltlg;->f(I)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5c
    move p0, v2

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

    :goto_5d
    goto :goto_58

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p1, Ltlg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object p3, p2, Lqnt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop
.end method
