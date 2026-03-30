.class public final Ltkh;
.super Ltiv;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ltkm;
.implements Ltly;


# static fields
.field public static final a:Ltkh;

.field private static final d:[I


# instance fields
.field public b:[I

.field public c:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ltkh;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-gez p1, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    :goto_6
    if-lt p1, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1e

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

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Index:"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    const-string p1, ", Size:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

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

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    new-array v1, v0, [I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    new-instance v2, Ltkh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, v1, v0, v0}, Ltkh;-><init>([IIZ)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    sput-object v2, Ltkh;->a:Ltkh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const v0, 0x20

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

    :goto_f
    sput-object v1, Ltkh;->d:[I

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
.end method

.method constructor <init>()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const v1, 0x1e

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

    :goto_4
    invoke-direct {p0, v0, v1, v2}, Ltkh;-><init>([IIZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ltkh;->d:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>([IIZ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltkh;->b:[I

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
    iput p2, p0, Ltkh;->c:I

    nop

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

    :goto_3
    invoke-direct {p0, p3}, Ltiv;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    if-le p1, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    add-int/lit8 p1, p1, 0x1

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

    :goto_6
    throw p2

    nop

    :goto_7
    goto/32 :goto_25

    nop

    nop

    :goto_8
    iget-object v2, p0, Ltkh;->b:[I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_b
    array-length v3, v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput p1, p0, Ltkh;->modCount:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_d
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    invoke-direct {p0, p1}, Ltkh;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Ltkh;->b:[I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    iget v3, p0, Ltkh;->c:I

    nop

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

    :goto_15
    iget p1, p0, Ltkh;->modCount:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    iput-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    iget p1, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v3, p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    iput p1, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3}, Ltiw;->a(I)I

    move-result v0

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

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    check-cast p2, Ljava/lang/Integer;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    iget-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_21
    if-gez p1, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_24
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_16

    nop

    nop

    :goto_25
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_8

    nop

    nop

    :goto_28
    iget v0, p0, Ltkh;->c:I

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

    :goto_29
    aput p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    goto/32 :goto_7

    nop

    :goto_2c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v1, p1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x1

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

    :goto_2f
    sub-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aput-object v1, v0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

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

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    const/16 v2, 0x3d

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x14

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

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltkh;->modCount:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_3
    const v3, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    check-cast p1, Ltkh;

    nop

    goto/32 :goto_8

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

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p1, Ltkh;->c:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Ltiv;->addAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    iput v2, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    array-length v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    sub-int/2addr v3, v2

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

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    if-gt v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v3, v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p1, Ltkh;->b:[I

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

    nop

    :goto_15
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_17
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ltkw;->b(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/OutOfMemoryError;

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

    :goto_1d
    iget-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    iget v4, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1f
    iget v2, p0, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    :goto_22
    iget-object v3, p0, Ltkh;->b:[I

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

    nop

    :goto_23
    iget p1, p0, Ltkh;->modCount:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v1

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    instance-of v0, p1, Ltkh;

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

    :goto_2b
    add-int/2addr p1, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2c
    iget p1, p1, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

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

    :goto_2e
    const v0, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltkh;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

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
.end method

.method public final d(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltkh;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    aget p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return p0

    nop

    nop
.end method

.method public final bridge synthetic e(I)Ltkv;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltkh;->f(I)Ltkm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    :goto_2
    aget v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    iget v1, p0, Ltkh;->c:I

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

    :goto_4
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    instance-of v1, p1, Ltkh;

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

    :goto_6
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_f

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    :goto_d
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    return v3

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    if-ne v2, v4, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    :goto_17
    goto :goto_20

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Ltkh;->b:[I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p1, Ltkh;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    return v3

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    move v1, v3

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    invoke-super {p0, p1}, Ltiv;->equals(Ljava/lang/Object;)Z

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

    :goto_24
    iget-object p1, p1, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    aget v4, p1, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_26
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_27
    iget v2, p1, Ltkh;->c:I

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

    nop
.end method

.method public final f(I)Ltkm;
    .locals 2

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const/4 v1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ltkh;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    new-instance v0, Ltkh;

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

    :goto_7
    if-ge p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Ltkh;->d:[I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p1, p0, v1}, Ltkh;-><init>([IIZ)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_d
    iget-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_13
    goto/32 :goto_9

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

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

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iget v0, p0, Ltkh;->c:I

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

    :goto_19
    goto/16 :goto_4

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(I)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput p1, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ltkh;->b:[I

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

    :goto_7
    iput v2, p0, Ltkh;->c:I

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

    :goto_8
    new-array v0, v0, [I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_c
    iget v0, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    iget-object v0, p0, Ltkh;->b:[I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-static {v1}, Ltiw;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_15
    iget v2, p0, Ltkh;->c:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    iget v1, p0, Ltkh;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Ltkh;->b:[I

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
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltkh;->d(I)I

    move-result p0

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

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_13

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    :goto_2
    mul-int/lit8 v1, v1, 0x1f

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Ltkh;->b:[I

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

    :goto_6
    if-lt v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    iget v2, p0, Ltkh;->c:I

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

    :goto_a
    const v0, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    aget v2, v2, v0

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return v1

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Ljava/lang/Integer;

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

    :goto_2
    if-lt v2, v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Ltkh;->b:[I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1c

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Ltkh;->c:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_f
    return v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v3, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v3, v3, v2

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_18
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    add-int/lit8 p1, p1, -0x1

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

    :goto_6
    aget v1, v0, p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    add-int/lit8 v3, v2, -0x1

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
    rem-int v0, v0, v1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    sub-int/2addr v2, p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    if-lt p1, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_10
    iget p1, p0, Ltkh;->modCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iput p1, p0, Ltkh;->modCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    const v0, 0xc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v2, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Ltkh;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    iget-object v0, p0, Ltkh;->b:[I

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

    :goto_1a
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, p1}, Ltkh;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_19

    nop

    nop
.end method

.method protected final removeRange(II)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Ltkh;->modCount:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    if-ge p2, p1, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_6
    const-string p1, "toIndex < fromIndex"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    iget-object v0, p0, Ltkh;->b:[I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    sub-int/2addr p2, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    iput v0, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v0, p2

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

    :goto_13
    iget p1, p0, Ltkh;->modCount:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_15
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    iget v1, p0, Ltkh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v1, p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_1
    aget v0, p0, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltkh;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltkh;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    aput p2, p0, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p2, Ljava/lang/Integer;

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

.method public final size()I
    .locals 0

    goto/32 :goto_1

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
    iget p0, p0, Ltkh;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
