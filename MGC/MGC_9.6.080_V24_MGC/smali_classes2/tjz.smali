.class public final Ltjz;
.super Ltiv;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ltkl;
.implements Ltly;


# static fields
.field public static final a:Ltjz;

.field private static final d:[F


# instance fields
.field public b:[F

.field public c:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-lt p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    if-gez p1, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltjz;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget v0, p0, Ltjz;->c:I

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const-string v1, "Index:"

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

    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, ", Size:"

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

    :goto_c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const v0, 0x3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    new-instance v2, Ltjz;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_7

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

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    sput-object v1, Ltjz;->d:[F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0x14

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

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    invoke-direct {v2, v1, v0, v0}, Ltjz;-><init>([FIZ)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v2, Ltjz;->a:Ltjz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method constructor <init>()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Ltjz;-><init>([FIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    sget-object v0, Ltjz;->d:[F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    const/4 v2, 0x1

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

    :goto_d
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method private constructor <init>([FIZ)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ltjz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Ltjz;->c:I

    nop

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

    :goto_3
    invoke-direct {p0, p3}, Ltiv;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v3}, Ltiw;->a(I)I

    move-result v0

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

    :goto_1
    iput p1, p0, Ltjz;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2d

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

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1}, Ltjz;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_6
    goto/16 :goto_28

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    add-int/lit8 v1, p1, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    iget v3, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v0, v3, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v0, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_e
    iget-object v2, p0, Ltjz;->b:[F

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

    :goto_f
    iget-object v0, p0, Ltjz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

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

    :goto_11
    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p1, p0, Ltjz;->modCount:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Ltjz;->c:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

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

    :goto_16
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Ltjz;->b:[F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-le p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_19

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    array-length v3, v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput p1, p0, Ltjz;->modCount:I

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

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    iget p1, p0, Ltjz;->c:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gez p1, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aput p2, v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    iput-object v0, p0, Ltjz;->b:[F

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_f

    nop

    nop

    :goto_29
    add-int/lit8 p1, p1, 0x1

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

    :goto_2a
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    iget-object v2, p0, Ltjz;->b:[F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_2e

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    :goto_2f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjz;->g(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Float;

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    iput v2, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ltkw;->b(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    iput-object v0, p0, Ltjz;->b:[F

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_29

    nop

    nop

    :goto_a
    iget-object v0, p0, Ltjz;->b:[F

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

    :goto_b
    iget v4, p0, Ltjz;->c:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Ltjz;->b:[F

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

    :goto_d
    const v3, 0x7fffffff

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p1, Ltjz;->b:[F

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

    :goto_11
    iget p1, p1, Ltjz;->c:I

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

    :goto_12
    if-gt v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_13
    add-int/2addr p1, v0

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

    :goto_14
    array-length v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    iget p1, p0, Ltjz;->modCount:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x12

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    instance-of v0, p1, Ltjz;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    iget v2, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    sub-int/2addr v3, v2

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

    :goto_22
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_23
    iget v0, p1, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    invoke-super {p0, p1}, Ltiv;->addAll(Ljava/util/Collection;)Z

    move-result p0

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

    nop

    :goto_25
    if-ge v3, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_24

    nop

    nop

    :goto_27
    iput p1, p0, Ltjz;->modCount:I

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

    :goto_28
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Ltjz;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjz;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, -0x1

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

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)F
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltjz;->b:[F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget p0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ltjz;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop
.end method

.method public final bridge synthetic e(I)Ltkv;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjz;->f(I)Ltkl;

    move-result-object p0

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    aget v4, p1, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    return v3

    nop

    nop

    :goto_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Ltiv;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    if-eq p0, p1, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    if-lt v1, v2, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ltjz;

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

    :goto_10
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    iget v2, p0, Ltjz;->c:I

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

    :goto_12
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    if-ne v2, v4, :cond_4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    instance-of v1, p1, Ltjz;

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

    :goto_17
    iget-object v2, p0, Ltjz;->b:[F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_18
    goto :goto_1b

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    move v1, v3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1c
    return p0

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    :goto_1f
    iget v2, p1, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return v0

    nop

    :goto_22
    goto/32 :goto_29

    nop

    nop

    :goto_23
    return v3

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aget v2, v2, v1

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

    nop

    :goto_26
    iget v1, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p1, Ltjz;->b:[F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop
.end method

.method public final f(I)Ltkl;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltjz;->b:[F

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

    :goto_6
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ltjz;

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

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    :goto_c
    invoke-direct {v0, p1, p0, v1}, Ltjz;-><init>([FIZ)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    iget p0, p0, Ltjz;->c:I

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

    :goto_15
    return-object v0

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    sget-object p1, Ltjz;->d:[F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ge p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop
.end method

.method public final g(F)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    iget-object v1, p0, Ltjz;->b:[F

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

    :goto_2
    aput p1, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ltjz;->c:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    iput v2, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ltjz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-static {v1}, Ltiw;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    new-array v0, v0, [F

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, p0, Ltjz;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    iget-object v1, p0, Ltjz;->b:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    const v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ltjz;->b:[F

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

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

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltjz;->d(I)F

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    mul-int/lit8 v1, v1, 0x1f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    if-lt v0, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Ltjz;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v1, 0x3

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

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_b
    goto :goto_9

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Ltjz;->b:[F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    add-int/2addr v1, v2

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

    :goto_13
    aget v2, v2, v0

    nop

    goto/32 :goto_4

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

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_3
    instance-of v0, p1, Ljava/lang/Float;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_5
    add-int v0, v0, v1

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
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

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

    nop

    :goto_8
    iget v0, p0, Ltjz;->c:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    cmpl-float v3, v3, p1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    const/4 v1, -0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    aget v3, v3, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lt v2, v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_17

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-eqz v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Ltjz;->b:[F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    const v0, 0x2

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
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltjz;->modCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p1, p1, -0x1

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

    :goto_3
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v1, v0, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    iget p1, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Ltjz;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_d

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p0, Ltjz;->modCount:I

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

    nop

    :goto_d
    iget-object v0, p0, Ltjz;->b:[F

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

    :goto_e
    sub-int/2addr v2, p1

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

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iput p1, p0, Ltjz;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_13
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

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

    :goto_14
    add-int/lit8 p1, p1, 0x1

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

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_17
    if-lt p1, v3, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_19
    add-int/lit8 v3, v2, -0x1

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

    nop

    :goto_1a
    const v0, 0x15

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v2, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method protected final removeRange(II)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_12

    nop

    nop

    :goto_5
    iget v1, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Ltjz;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ltjz;->b:[F

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

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_e
    const v1, 0xe

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "toIndex < fromIndex"

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
    goto/32 :goto_14

    nop

    :goto_11
    iget p1, p0, Ltjz;->modCount:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Ltjz;->c:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    if-ge p2, p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_16
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_15

    nop

    nop

    :goto_18
    sub-int/2addr v0, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_19
    sub-int/2addr p2, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    iput p1, p0, Ltjz;->modCount:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

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

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    aput p2, p0, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget v0, p0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltjz;->b:[F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ltjz;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    check-cast p2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_1
    iget p0, p0, Ltjz;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
