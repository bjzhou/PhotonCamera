.class public abstract Lbuj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lucv;


# instance fields
.field public final a:[Lbva;

.field public b:I

.field public c:Z


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

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
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lbuj;->c:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop
.end method

.method public constructor <init>(Lbuz;[Lbva;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p1, Lbuz;->b:[Ljava/lang/Object;

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

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, v1, p1}, Lbva;->c([Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    aget-object p2, p2, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lbuz;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lbuj;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Lbuj;->b:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    iput-object p2, p0, Lbuj;->a:[Lbva;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iput-boolean v0, p0, Lbuj;->c:Z

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

    nop

    nop

    :goto_11
    const/4 v0, 0x0

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

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lbva;->e()Z

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    if-ne v2, v3, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_34

    nop

    nop

    :goto_4
    iget v0, p0, Lbuj;->b:I

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-boolean v1, p0, Lbuj;->c:Z

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

    :goto_9
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    aget-object v2, v2, v0

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    aget-object v0, v0, v1

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

    :goto_e
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v3, v0, -0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    invoke-direct {p0, v0}, Lbuj;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iget-object v2, p0, Lbuj;->a:[Lbva;

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

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    invoke-virtual {v2}, Lbva;->b()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v3, v1}, Lbva;->c([Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    const v1, 0x1c

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

    :goto_1d
    if-eq v2, v3, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Lbva;->f()Z

    move-result v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    iget-object v3, v3, Lbuz;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    iget-object v0, p0, Lbuj;->a:[Lbva;

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

    :goto_22
    aget-object v2, v2, v3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    iput v2, p0, Lbuj;->b:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Lbuj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lbva;->b()V

    :goto_28
    goto/32 :goto_1b

    nop

    nop

    :goto_29
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_2a
    sget-object v3, Lbuz;->a:Lbuz;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2b
    aget-object v2, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lbuj;->a:[Lbva;

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

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    aget-object v2, v2, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    if-gez v0, :cond_4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_32
    if-gtz v0, :cond_5

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Lbuj;->a:[Lbva;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_36
    invoke-direct {p0, v0}, Lbuj;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(I)I
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2c

    nop

    nop

    :goto_2
    return p1

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2f

    nop

    nop

    :goto_7
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    add-int/2addr v0, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_b
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lbuj;->a:[Lbva;

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

    :goto_d
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lbuj;->a:[Lbva;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    iget-object v0, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    aget-object v0, v1, v0

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

    :goto_11
    const/4 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    iget-object v0, v0, Lbuz;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lbva;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lbva;->f()Z

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_17
    const v0, 0xf

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

    :goto_18
    aget-object v0, v0, p1

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

    nop

    :goto_19
    invoke-virtual {v1, v2, v0}, Lbva;->c([Ljava/lang/Object;I)V

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    check-cast v0, Lbuz;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v0, v0, p1

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

    nop

    :goto_1e
    invoke-virtual {v0}, Lbva;->e()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, p1}, Lbuj;->f875135777c17da3cef2ea6eeff5be29m(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    iget v0, v0, Lbva;->b:I

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

    :goto_22
    array-length v2, v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_1a

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    aget-object v1, v1, v2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v0, v2}, Lbva;->c([Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    return p0

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget-object v0, v0, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    if-eq p1, v1, :cond_3

    nop

    goto/32 :goto_24

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

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Lbuz;->a()I

    move-result v0

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

    :goto_2e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lbuj;->a:[Lbva;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_30
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v2, v0, Lbuz;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, v0, Lbva;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_21

    nop

    nop
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lbuj;->a:[Lbva;

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
    iget p0, p0, Lbuj;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    aget-object p0, v0, p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lbva;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lbuj;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop
.end method

.method public final hasNext()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lbuj;->c:Z

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lbuj;->da190e616797844b591057d0190e7728m()V

    goto/32 :goto_e

    nop

    nop

    :goto_2
    iget-object v0, p0, Lbuj;->a:[Lbva;

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

    nop

    :goto_3
    invoke-virtual {v0}, Lbva;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lbuj;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const v1, 0x14

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

    :goto_b
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Lbuj;->b:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public remove()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-static {}, La;->a()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
