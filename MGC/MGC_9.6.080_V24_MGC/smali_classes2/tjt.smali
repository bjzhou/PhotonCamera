.class final Ltjt;
.super Ltiv;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ltkv;
.implements Ltly;


# static fields
.field private static final c:[D


# instance fields
.field public a:[D

.field public b:I


# direct methods
.method private final 19e596a3e324281407eb5c11093c0152m(I)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iget v0, p0, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    if-gez p1, :cond_1

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p1}, Ltjt;->d5484163cd8d335e6b17663474ff5f2bm(I)Ljava/lang/String;

    move-result-object p0

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

    :goto_8
    throw v0

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    new-instance v2, Ltjt;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    sput-object v1, Ltjt;->c:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    new-array v1, v0, [D

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
    goto/32 :goto_4

    nop

    :goto_e
    invoke-direct {v2, v1, v0, v0}, Ltjt;-><init>([DIZ)V

    goto/32 :goto_8

    nop

    nop
.end method

.method constructor <init>()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Ltjt;->c:[D

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v1, v2}, Ltjt;-><init>([DIZ)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

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
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const v1, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop
.end method

.method private constructor <init>([DIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p3}, Ltiv;-><init>(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltjt;->a:[D

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Ltjt;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(I)Ljava/lang/String;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

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
    iget p0, p0, Ltjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    const v1, 0x3

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
    return-object p0

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

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

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const-string v1, "Index:"

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

    :goto_d
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

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltjt;->d5484163cd8d335e6b17663474ff5f2bm(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Ltjt;->a:[D

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    invoke-static {v3, p1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aput-wide v0, p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_7
    if-le p1, p2, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Ltjt;->b:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    :goto_f
    goto :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    iput-object p2, p0, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    iget p2, p0, Ltjt;->b:I

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

    :goto_15
    check-cast p2, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-array p2, p2, [D

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_18
    invoke-static {v3, p1, v3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    :goto_1a
    const v0, 0x1

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

    :goto_1b
    sub-int/2addr p2, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p1, p0, Ltjt;->b:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    array-length v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    :goto_22
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v3, v4, p2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget p1, p0, Ltjt;->modCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v3, p0, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    invoke-static {v4}, Ltiw;->a(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr v4, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2b
    iput p1, p0, Ltjt;->modCount:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    iget v4, p0, Ltjt;->b:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Ltjt;->a:[D

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v3, p0, Ltjt;->a:[D

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

    :goto_2f
    if-lt p2, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

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

    :goto_3
    goto/32 :goto_5

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

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Ltjt;->f(D)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Double;

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

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
    const v3, 0x7fffffff

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

    :goto_3
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iput p1, p0, Ltjt;->modCount:I

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
    iget p1, p1, Ltjt;->b:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Ltkw;->b(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ltjt;->a:[D

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    add-int/2addr p1, v0

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

    :goto_e
    return v0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    invoke-super {p0, p1}, Ltiv;->addAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    if-gt v2, v3, :cond_1

    nop

    goto/32 :goto_18

    nop

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

    :goto_13
    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_2b

    nop

    nop

    :goto_14
    check-cast p1, Ltjt;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

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

    :goto_16
    instance-of v0, p1, Ltjt;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ltjt;->a:[D

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p1, Ltjt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1a
    const/4 v0, 0x1

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

    :goto_1b
    new-instance p0, Ljava/lang/OutOfMemoryError;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1e
    iget p1, p0, Ltjt;->modCount:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    array-length v3, v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_20
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_21
    iget-object v0, p1, Ltjt;->a:[D

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_23
    if-ge v3, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    return p0

    nop

    :goto_25
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v2, p0, Ltjt;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v2, p0, Ltjt;->b:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2c
    iget v4, p0, Ltjt;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    sub-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2e
    iget-object v3, p0, Ltjt;->a:[D

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1d

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

    :goto_0
    invoke-virtual {p0, p1}, Ltjt;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_4
    const/4 p1, -0x1

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

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop
.end method

.method public final d(I)D
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-wide p0, p0, p1

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

    :goto_1
    return-wide p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltjt;->a:[D

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltjt;->19e596a3e324281407eb5c11093c0152m(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic e(I)Ltkv;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    goto/16 :goto_11

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Ltjt;->b:I

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

    :goto_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ltjt;->a:[D

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

    :goto_d
    new-instance v0, Ltjt;

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

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
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

    :goto_10
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sget-object p1, Ltjt;->c:[D

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

    :goto_16
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_17
    iget p0, p0, Ltjt;->b:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    if-ge p1, v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p1, p0, v1}, Ltjt;-><init>([DIZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x1

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
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    iget-object v2, p0, Ltjt;->a:[D

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
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    aget-wide v6, p1, v1

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

    :goto_4
    iget v2, p1, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    const v1, 0xd

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

    :goto_6
    iget-object p1, p1, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    instance-of v1, p1, Ltjt;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget-wide v4, v2, v1

    nop

    goto/32 :goto_16

    nop

    nop

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

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    iget v1, p0, Ltjt;->b:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget v2, p0, Ltjt;->b:I

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

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ltjt;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    return v3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    move v1, v3

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long v2, v4, v6

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

    :goto_1c
    if-eq p0, p1, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, p1}, Ltiv;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_20
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    return v3

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_19

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

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

    nop

    :goto_28
    return p0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2a
    if-lt v1, v2, :cond_5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(D)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v2, p0, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    aput-wide p1, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v1, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, v1, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v0, v0, [D

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Ltiw;->a(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_a
    iget v1, p0, Ltjt;->b:I

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

    :goto_b
    iget-object v1, p0, Ltjt;->a:[D

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

    :goto_c
    iget-object v0, p0, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

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

    :goto_e
    iget v0, p0, Ltjt;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Ltjt;->a:[D

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v2, p0, Ltjt;->b:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

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

    :goto_0
    invoke-virtual {p0, p1}, Ltjt;->d(I)D

    move-result-wide p0

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    mul-int/lit8 v1, v1, 0x1f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget v2, p0, Ltjt;->b:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v3}, La;->r(J)I

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    aget-wide v2, v2, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    if-lt v0, v2, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    :goto_13
    iget-object v2, p0, Ltjt;->a:[D

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    goto :goto_e

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-lt v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    goto :goto_14

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    instance-of v0, p1, Ljava/lang/Double;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    return v1

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    cmpl-double v4, v4, v2

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

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

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

    :goto_13
    const/4 v0, 0x0

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    iget p1, p0, Ltjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    if-eqz v4, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    :goto_17
    return v1

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

    :goto_19
    const/4 v1, -0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-wide v4, v4, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    check-cast p1, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Ltjt;->a:[D

    nop

    nop

    goto/32 :goto_1a

    nop

    nop
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    const v1, 0x6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ltjt;->19e596a3e324281407eb5c11093c0152m(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    if-lt p1, v4, :cond_0

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

    :cond_0
    goto/32 :goto_a

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

    goto/32 :goto_17

    nop

    nop

    :goto_6
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
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

    nop

    nop

    :goto_9
    iput p1, p0, Ltjt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    add-int/lit8 v4, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v4, v3, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iput p1, p0, Ltjt;->modCount:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v3, p0, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    aget-wide v1, v0, p1

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

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_e

    nop

    :goto_13
    iget p1, p0, Ltjt;->modCount:I

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

    :goto_14
    add-int/lit8 v3, v3, -0x1

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

    :goto_15
    iget-object v0, p0, Ltjt;->a:[D

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

    :goto_16
    iget p1, p0, Ltjt;->b:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_18
    return-object p0

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v3, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method protected final removeRange(II)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltjt;->b:I

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

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Ltjt;->a:[D

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    if-ge p2, p1, :cond_0

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

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

    :goto_7
    iget p1, p0, Ltjt;->modCount:I

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

    :goto_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    iput v0, p0, Ltjt;->b:I

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

    nop

    :goto_c
    const-string p1, "toIndex < fromIndex"

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Ltjt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    sub-int/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Ltjt;->modCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    sub-int/2addr v0, p2

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

    :goto_1b
    sub-int/2addr v1, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

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

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    aget-wide v2, p0, p1

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

    :goto_7
    aput-wide v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    check-cast p2, Ljava/lang/Double;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Ltjt;->19e596a3e324281407eb5c11093c0152m(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ltiv;->et()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ltjt;->a:[D

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

    :goto_11
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_0
    iget p0, p0, Ltjt;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method
