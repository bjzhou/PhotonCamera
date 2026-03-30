.class public final Ltrp;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field g:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 8

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v4, p4

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    move-object v1, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    move-object v2, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v0 .. v7}, Ltrp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p6, p0, Ltrp;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltrp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ltrp;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Ltrp;->g:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Ltrp;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Ltrp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p5, p0, Ltrp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltrp;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltrp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ltrp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iput-object p1, p0, Ltrp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Ltrp;->c:Ljava/lang/Object;

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

    :goto_2
    const v0, 0x5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    :goto_7
    return v1

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    :goto_c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Ljava/lang/String;

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

    :goto_e
    const v1, 0x8

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

    :goto_f
    iget-object p1, p0, Ltrp;->b:Ljava/lang/Object;

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

    :goto_10
    const/4 v1, 0x0

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

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    :goto_15
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Ltrp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    return p1

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    :goto_1f
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_7
    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_1e

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

    :goto_23
    iget-object p0, p0, Ltrp;->d:Ljava/lang/Object;

    nop

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

    nop

    :goto_24
    if-nez p1, :cond_8

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_8
    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Liow;
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_2
    const/4 v3, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x14

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_3b

    nop

    nop

    :goto_5
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v4, v3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v11, Liow;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v8, Lryb;

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

    nop

    :goto_c
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

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

    :goto_d
    iget-object v1, v11, Liow;->b:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    new-instance v0, Liol;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_f
    move-object v8, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    move-object v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    iget-object v1, v11, Liow;->c:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_15
    check-cast v5, Lj$/util/Optional;

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

    :goto_16
    add-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Ltrp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_19
    move-object v3, v11

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

    :goto_1a
    check-cast v10, Lioy;

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

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Ljava/lang/Integer;

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

    :goto_1d
    check-cast v9, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1e
    iget-object v5, p0, Ltrp;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Ltrp;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    iget-object v0, p0, Ltrp;->f:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v6, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_23
    check-cast v7, Lcom/google/googlex/gcam/ShotMetadata;

    nop

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

    :goto_24
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_33

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Liol;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2b
    new-instance v2, Liol;

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

    nop

    :goto_2c
    if-ne p0, v0, :cond_2

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

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1}, Liol;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_31
    check-cast v4, Lj$/util/Optional;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct/range {v3 .. v10}, Liow;-><init>(Lj$/util/Optional;Lj$/util/Optional;Lj$/util/Optional;Lcom/google/googlex/gcam/ShotMetadata;Lryb;Lj$/util/Optional;Lioy;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_33
    return-object v11

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_35
    move-object v10, v2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_36
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_37
    move-object v6, v5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_39
    const/4 v1, 0x4

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3a
    iget-object v4, p0, Ltrp;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Ltrp;->g:Ljava/lang/Object;

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

    nop

    :goto_3c
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3e
    const/4 p0, 0x0

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

    :goto_3f
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_41
    const/4 v3, 0x6

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

    :goto_42
    move-object v9, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_43
    invoke-direct {v2, v3}, Liol;-><init>(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, v11, Liow;->a:Lj$/util/Optional;

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

    :goto_45
    invoke-direct {v2, v3}, Liol;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v0, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Ltrp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_3f

    nop

    :goto_49
    const v1, 0x12

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method public final c(Lioy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltrp;->g:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final d(Lryb;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltrp;->e:Ljava/lang/Object;

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

.method public final e(Lcom/google/googlex/gcam/RawReadView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ltrp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final f(Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

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
    iput-object p1, p0, Ltrp;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
