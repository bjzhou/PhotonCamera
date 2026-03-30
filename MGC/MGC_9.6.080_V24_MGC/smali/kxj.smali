.class public final Lkxj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lpou;

.field public final b:Lpck;

.field public final c:Landroid/graphics/Rect;

.field private final d:Lpou;


# direct methods
.method public constructor <init>(Lpou;Lpou;Lpck;Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkxj;->d:Lpou;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkxj;->a:Lpou;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lkxj;->c:Landroid/graphics/Rect;

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
    return-void

    nop

    :goto_5
    iput-object p3, p0, Lkxj;->b:Lpck;

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
.end method

.method public static a(Lpnu;Lpck;I)Lkxj;
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lkxj;

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

    nop

    :goto_1
    check-cast v4, Lpck;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2
    new-instance p0, Lkxi;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3
    iget v8, p1, Lpck;->a:I

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

    :goto_4
    invoke-direct {v2, p2, p0}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_7
    sget v4, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v4, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-ge v7, v8, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_a
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Lkxi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object v3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_e

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
    xor-int/lit8 v0, v0, 0x1

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

    :goto_15
    invoke-static {p0}, Lolx;->aI(Ljava/util/List;)Lpck;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, p2}, Lpnu;->y(I)Ljava/util/List;

    move-result-object p0

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

    :goto_17
    iget v8, p1, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    const v1, 0x5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v3}, Lpby;->e(Lpck;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    new-instance v1, Lpou;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    const-wide v1, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    invoke-direct {v1, p2, v3}, Lpou;-><init>(ILpck;)V

    goto/32 :goto_27

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_22
    cmp-long v7, v5, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

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

    :goto_25
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    new-instance v2, Lpou;

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

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    if-ge v7, v8, :cond_5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    move-wide v1, v5

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2c
    move-object v3, v4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2d
    iget v7, v4, Lpck;->a:I

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

    :goto_2e
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4}, Lpck;->b()J

    move-result-wide v5

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    iget v7, v4, Lpck;->b:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, v1, v2, p1, v0}, Lkxj;-><init>(Lpou;Lpou;Lpck;Landroid/graphics/Rect;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    invoke-static {p1}, Lpby;->j(Lpck;)Lpby;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_23

    nop

    nop

    :goto_34
    if-ltz v7, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

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

    nop

    :goto_37
    goto/16 :goto_1a

    nop

    :goto_38
    goto/32 :goto_7

    nop

    nop

    :goto_39
    const-string p1, "No picture sizes supported for format: "

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
.end method


# virtual methods
.method public final b()Lpck;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpou;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkxj;->d:Lpou;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lkxj;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v3}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lkxj;->b:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Lkxj;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iget-object v1, p0, Lkxj;->a:Lpou;

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

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p1, Lkxj;->d:Lpou;

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

    :goto_e
    iget-object v3, p1, Lkxj;->b:Lpck;

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

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_3

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

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1, v3}, Lpou;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
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

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    const v1, 0xe

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lkxj;->d:Lpou;

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

    :goto_1d
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    :goto_1e
    iget-object p0, p0, Lkxj;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq p0, p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    nop

    :goto_22
    goto/32 :goto_24

    nop

    nop

    :goto_23
    invoke-virtual {v1, v3}, Lpou;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    instance-of v1, p1, Lkxj;

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

    :goto_25
    iget-object v3, p1, Lkxj;->a:Lpou;

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
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lkxj;->a:Lpou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const v1, 0x1f

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/32 :goto_e

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

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

    :goto_7
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    iget-object v0, p0, Lkxj;->b:Lpck;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    iget-object v1, p0, Lkxj;->d:Lpou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iget-object p0, p0, Lkxj;->c:Landroid/graphics/Rect;

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_16

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    const-string v1, "large image reader"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lrsr;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    new-instance v0, Lrsr;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Lkxj;->a:Lpou;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lkxj;->b:Lpck;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const-string v1, "crop"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    :goto_12
    iget-object p0, p0, Lkxj;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "desired size"

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

    :goto_14
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1, p0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_16
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    const-string v1, "PictureSizeCalculator.Configuration"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "full-size image reader"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lkxj;->d:Lpou;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
