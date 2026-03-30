.class public Lbul;
.super Lbuj;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lucv;


# instance fields
.field public final d:Lbuk;

.field public e:I

.field private f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Lbuk;[Lbva;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Lbuk;->d:I

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
    iput p1, p0, Lbul;->e:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Lbul;->d:Lbuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Lbuk;->b:Lbuz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, v0, p2}, Lbuj;-><init>(Lbuz;[Lbva;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(ILbuz;Ljava/lang/Object;I)V
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    shl-int v0, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0}, Lbuz;->b(I)I

    move-result p1

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

    nop

    :goto_2
    iget-object p1, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    iget-object v4, p2, Lbuz;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, v0}, Lbvd;->a(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v4, p2, v0}, Lbva;->d([Ljava/lang/Object;II)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a
    aget-object v3, v3, p4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-virtual {p2, v0}, Lbuz;->c(I)I

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Lbuz;->a()I

    move-result p2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1, v2, p3, p4}, Lbul;->b(ILbuz;Ljava/lang/Object;I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, v0}, Lbuz;->m(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr p2, p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_13
    goto/32 :goto_2f

    nop

    nop

    :goto_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget-object p1, p1, p4

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

    nop

    :goto_16
    goto :goto_19

    nop

    nop

    :goto_17
    goto/32 :goto_32

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2, v0, v1}, Lbva;->d([Ljava/lang/Object;II)V

    :goto_19
    goto/32 :goto_37

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p2, p2, Lbuz;->b:[Ljava/lang/Object;

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

    :goto_1e
    const v0, 0x10

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p3, v0, p2, p1}, Lbva;->d([Ljava/lang/Object;II)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p3, p0, Lbuj;->a:[Lbva;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    if-gt v0, v1, :cond_2

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
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Lbuz;->a()I

    move-result p2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_23
    aget-object p3, p3, p4

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

    :goto_24
    return-void

    nop

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    aget-object p1, p1, p4

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

    nop

    :goto_27
    iput p2, p1, Lbva;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_28
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    array-length v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    add-int/2addr p4, v1

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

    :goto_2c
    invoke-virtual {p1}, Lbva;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput p4, p0, Lbuj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v1, 0x1

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

    :goto_32
    iput p4, p0, Lbuj;->b:I

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

    :goto_33
    add-int/2addr p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_34
    mul-int/lit8 v0, p4, 0x5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p2, v0}, Lbuz;->i(I)Lbuz;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    iget-object v3, p0, Lbuj;->a:[Lbva;

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

    nop

    :goto_37
    iget-object p1, p0, Lbuj;->a:[Lbva;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_38
    iget-object v0, p2, Lbuz;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_39
    iget-object p1, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3a
    iget p2, p1, Lbva;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3b
    aget-object p1, p1, p4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

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

    :goto_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget v0, v0, Lbuk;->d:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lbuj;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lbul;->e:I

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

    :goto_c
    iput-object v0, p0, Lbul;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lbul;->d:Lbuk;

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

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0}, Lbuj;->next()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    iput-boolean v0, p0, Lbul;->g:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    :goto_0
    invoke-static {v0}, Lucu;->h(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_25

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v2, v3, v0, v1}, Lbul;->b(ILbuz;Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Lucu;->h(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_a
    iput v0, p0, Lbul;->e:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v3, Lbuk;->b:Lbuz;

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

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    invoke-virtual {p0}, Lbuj;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lbul;->d:Lbuk;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lbul;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Lbul;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lbul;->d:Lbuk;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_14
    const v1, 0x20

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    goto :goto_22

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lbul;->d:Lbuk;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_19
    goto/32 :goto_27

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lbuj;->c:Z

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Lbul;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    move v2, v1

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v1, p0, Lbul;->g:Z

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_24
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    :goto_26
    iget v0, v0, Lbuk;->d:I

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

    :goto_27
    const/4 v0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    iget-object v3, p0, Lbul;->d:Lbuk;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-boolean v0, p0, Lbul;->g:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
