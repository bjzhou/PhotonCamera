.class public final Ltjb;
.super Ltiv;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ltki;
.implements Ltly;


# static fields
.field public static final a:Ltjb;

.field private static final c:[Z


# instance fields
.field public b:I

.field private d:[Z


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltjb;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltjb;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const-string p1, ", Size:"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x13

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const-string v1, "Index:"

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

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

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

    :goto_f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    sput-object v2, Ltjb;->a:Ltjb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

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

    :goto_3
    sput-object v1, Ltjb;->c:[Z

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, v1, v0, v0}, Ltjb;-><init>([ZIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    new-instance v2, Ltjb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v1, v0, [Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method constructor <init>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Ltjb;-><init>([ZIZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    const v0, 0xd

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    sget-object v0, Ltjb;->c:[Z

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

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>([ZIZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p2, p0, Ltjb;->b:I

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

    :goto_1
    invoke-direct {p0, p3}, Ltiv;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, 0x1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_2
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    :goto_4
    throw p2

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    iget p1, p0, Ltjb;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget p1, p0, Ltjb;->modCount:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v3, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    if-gez p1, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

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

    nop

    :goto_f
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v3}, Ltiw;->a(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Ltjb;->modCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Ltjb;->b:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_17
    iput-object v0, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Ltjb;->d:[Z

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

    nop

    :goto_1a
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    add-int/lit8 v1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    new-array v0, v0, [Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    if-le p1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1}, Ltjb;->19e596a3e324281407eb5c11093c0152m(I)Ljava/lang/String;

    move-result-object p0

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
    array-length v3, v2

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

    :goto_28
    if-lt v0, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    nop

    :goto_2a
    invoke-static {v2, v3, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v3, p0, Ltjb;->b:I

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

    :goto_2c
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput p1, p0, Ltjb;->b:I

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

    :goto_2e
    aput-boolean p2, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2f
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_3
    invoke-virtual {p0, p1}, Ltjb;->f(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    if-gt v2, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

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

    :goto_1
    iget v2, p0, Ltjb;->b:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ltjb;->modCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    iget-object v0, p1, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    iget p1, p1, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/OutOfMemoryError;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    add-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p1, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    array-length v3, v0

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

    :goto_10
    sub-int/2addr v3, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Ltjb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1}, Ltiv;->addAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_15
    const v3, 0x7fffffff

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ge v3, v0, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

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

    :goto_1d
    iput v2, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_20
    iget v4, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Ltkw;->b(Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    :goto_22
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    :goto_26
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    instance-of v0, p1, Ltjb;

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

    :goto_28
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_29
    iget p1, p0, Ltjb;->modCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    add-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v0, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Ltjb;->d:[Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_7

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
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    const/4 p1, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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
    invoke-virtual {p0, p1}, Ltjb;->indexOf(Ljava/lang/Object;)I

    move-result p0

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

.method public final d(I)Ltki;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ltjb;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Ltjb;->c:[Z

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

    :goto_5
    iget-object v0, p0, Ltjb;->d:[Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    goto :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    if-ge p1, v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ltjb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p1, p0, v1}, Ltjb;-><init>([ZIZ)V

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    :goto_18
    const v1, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Ltjb;->b:I

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic e(I)Ltkv;
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Ltjb;->d(I)Ltki;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

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

    :goto_3
    aget-boolean v4, p1, v1

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, p0, Ltjb;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    move v1, v3

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
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Ltjb;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_13
    return v3

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    :goto_16
    if-lt v1, v2, :cond_3

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_18
    if-ne v2, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

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

    :goto_19
    iget-object p1, p1, Ltjb;->d:[Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    aget-boolean v2, v2, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v1, v1, 0x1

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

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    :goto_1f
    iget v2, p1, Ltjb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    invoke-super {p0, p1}, Ltiv;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    instance-of v1, p1, Ltjb;

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

    :goto_22
    goto/16 :goto_e

    nop

    :goto_23
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    iget v1, p0, Ltjb;->b:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v3

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method public final f(Z)V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ltjb;->d:[Z

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    aput-boolean p1, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Ltjb;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-array v0, v0, [Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ltjb;->d:[Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xe

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

    :goto_d
    iget v0, p0, Ltjb;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_11
    iput v2, p0, Ltjb;->b:I

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

    :goto_12
    const/4 v3, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ltjb;->d:[Z

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

    :goto_14
    array-length v1, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x16

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget v2, p0, Ltjb;->b:I

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

    :goto_18
    iget-object v1, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_1a
    invoke-static {v1}, Ltiw;->a(I)I

    move-result v0

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

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final g(I)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltjb;->d:[Z

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
    invoke-direct {p0, p1}, Ltjb;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    aget-boolean p0, p0, p1

    nop

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

    nop

    nop

    nop
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ltjb;->g(I)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Ltjb;->d:[Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iget v2, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v1

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    aget-boolean v2, v2, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    :goto_12
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_14
    mul-int/lit8 v1, v1, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2}, La;->o(Z)I

    move-result v2

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
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_4

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

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

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

    :goto_2
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    if-eq v3, p1, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v2, v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

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

    :goto_a
    return v2

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    aget-boolean v3, v3, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    instance-of v0, p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    iget-object v3, p0, Ltjb;->d:[Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Ltjb;->b:I

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

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_8

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltjb;->d:[Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    add-int/lit8 p1, p1, -0x1

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

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Ltjb;->modCount:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget p1, p0, Ltjb;->modCount:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p1, p0, Ltjb;->b:I

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

    :goto_b
    add-int/lit8 v2, v2, -0x1

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

    :goto_c
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Ltjb;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
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

    nop

    :goto_f
    if-lt p1, v3, :cond_1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object p0

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

    :goto_14
    iput p1, p0, Ltjb;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    aget-boolean v1, v0, p1

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Ltjb;->b:I

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

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    sub-int/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final removeRange(II)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sub-int/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    iget v1, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_b

    nop

    nop

    :goto_a
    sub-int/2addr v0, p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    if-ge p2, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

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

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ltjb;->d:[Z

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

    :goto_e
    iput p1, p0, Ltjb;->modCount:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    throw p0

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
    const-string p1, "toIndex < fromIndex"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sub-int/2addr v1, p2

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

    :goto_13
    iget v0, p0, Ltjb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_14
    const v1, 0x1c

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

    :goto_15
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    const v0, 0x10

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

    :goto_17
    iput v0, p0, Ltjb;->b:I

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

    :goto_18
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

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

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_1a
    iget p1, p0, Ltjb;->modCount:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput-boolean p2, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    aget-boolean v0, p0, p1

    nop

    goto/32 :goto_0

    nop

    nop

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

    :goto_7
    invoke-direct {p0, p1}, Ltjb;->1478a1c7833aac5e360e0ba4b0c0c568m(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltjb;->d:[Z

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
.end method

.method public final size()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltjb;->b:I

    nop

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

    nop
.end method
