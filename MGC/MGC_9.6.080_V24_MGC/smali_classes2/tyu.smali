.class public final Ltyu;
.super Ltyp;
.source "PG"


# static fields
.field private static final d:[Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/util/Collection;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_23

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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

    :goto_6
    iget p1, p0, Ltyu;->c:I

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

    :goto_7
    aput-object v3, v2, p1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1f

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

    :goto_9
    array-length v1, v1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_c
    if-lt v1, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v2, :cond_3

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    aput-object v3, v2, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    add-int/2addr p1, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

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

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lt p1, v1, :cond_4

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

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1a

    nop

    nop

    :goto_24
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(I)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    add-int/2addr p1, p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return p1

    nop

    nop

    nop

    :goto_3
    if-ltz p1, :cond_0

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
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    array-length p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltyu;->modCount:I

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

    :goto_1
    iput v0, p0, Ltyu;->modCount:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_1

    nop

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
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(II)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v0, p1, v2}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, v0, p1, p2}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    const v1, 0xb

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

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    const/4 p1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    array-length v2, v1

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

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    if-lt p1, p2, :cond_1

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v0, p1, p2}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(I)V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Deque is too big."

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    iput v3, p0, Ltyu;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, Lrkm;->br(II)I

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, v0

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

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0xa

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_f
    iput-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_11
    sget-object v2, Ltyu;->d:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

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

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-array p1, p1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v2, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    new-array p1, p1, [Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, v0}, Lucd;->h(II)I

    move-result p1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1d
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-gez p1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_21
    invoke-static {v0, p1, v1, v3, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, p1, v3, v2, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1

    nop

    nop

    :goto_25
    if-le p1, v1, :cond_3

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_7

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(I)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1

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

    :goto_5
    invoke-static {p0}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    add-int/lit8 p0, p1, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ltyu;->d:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-array v0, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ltyp;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Ltyu;->d:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(I)I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    if-eq p1, p0, :cond_0

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

    nop

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

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

    :goto_4
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
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

    :goto_6
    return p0

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ge p1, p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    sub-int/2addr p1, p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    :goto_5
    array-length p0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_4a

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6
    array-length v2, p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr p1, v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Ltyu;->a:I

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

    :goto_b
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p2}, Ltyu;->addFirst(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    invoke-static {v3, v3, v5, v2, v6}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_10
    aget-object v5, v2, v4

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

    :goto_11
    array-length v6, v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_13
    add-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_14
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Ltyu;->7ecc92917e9c4556cc19f457ddc41af8m(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v2, v3, v0, p1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    if-eq p1, v0, :cond_2

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

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1b
    goto :goto_23

    nop

    nop

    :goto_1c
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    invoke-static {p1, v0}, La;->y(II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v5, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v0}, Ltyu;->7ecc92917e9c4556cc19f457ddc41af8m(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    invoke-static {p1, p1, v3, v0, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    aput-object p2, v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_25
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v2, v1, v4, p1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_28
    aput-object v5, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_29
    if-ge p1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget p1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    aput-object v3, p1, v4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput p1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v2, v2, v4, v1, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_32
    goto/32 :goto_2c

    nop

    nop

    :goto_33
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_35
    aput-object v4, v3, v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v5, v2, -0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_38
    invoke-static {v3, v3, v2, v4, v5}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aget-object v3, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3a
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_3b
    add-int/lit8 v4, v2, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3d
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v3, v0, 0x1

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

    :goto_40
    const v1, 0x9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    aget-object v4, v3, v2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_42
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p1}, Ltyu;->a(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, p2}, Ltyu;->addLast(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    add-int/lit8 v3, v2, 0x1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_46
    iget v2, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    aput-object p2, p1, v0

    nop

    nop

    :goto_4a
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4b
    if-lt p1, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {p0, v0}, Ltyu;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/2addr v0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4e
    iget v0, p0, Ltyu;->c:I

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_5

    nop

    nop

    :goto_51
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_52
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_f

    nop

    nop

    :goto_54
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    :goto_55
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    shr-int/2addr v3, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_58
    array-length v3, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ltyu;->addLast(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 8

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

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

    nop

    goto/32 :goto_57

    nop

    :cond_0
    goto/32 :goto_56

    nop

    :goto_2
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_1
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p1, v1, v3, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    invoke-static {v4, v4, v0, p1, v7}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int/2addr v0, v6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int v6, v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_b
    goto :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    invoke-static {v4, v4, v1, v3, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    array-length v6, v4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v4, p0, Ltyu;->c:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_4

    nop

    nop

    :goto_15
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    array-length v6, v4

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_18
    if-ge p1, v6, :cond_2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_19
    add-int p1, v2, v3

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v6, v4

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_1b
    iget v2, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1c
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1d
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v0}, Ltyu;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_20
    if-le v3, v6, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_21
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_22
    invoke-virtual {p0, p2}, Ltyu;->addAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1, p2}, Ltyu;->1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/util/Collection;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, v2}, Ltyu;->a(I)I

    move-result v2

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

    :goto_25
    invoke-static {p1, v0}, La;->y(II)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_26
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v0, p1, v2, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_2e
    goto :goto_36

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sub-int v7, v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_31
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, p1, v4, v1, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v4, v4, v3, v1, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, v0, p1, v2, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_36
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_37
    add-int/2addr v3, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    array-length v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_39
    if-eq p1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3a
    if-ge p1, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    iget-object v4, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v1, v1, v0, p1, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return p0

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_3f
    sub-int/2addr p1, v4

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_40
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v0, v0, v1, v6, v4}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_42
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_43
    sub-int v3, v0, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_44
    array-length v1, v0

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

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

    :goto_46
    array-length v4, v0

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

    nop

    nop

    :goto_47
    sub-int/2addr p1, v6

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

    :goto_48
    invoke-static {v4, v4, v0, p1, v6}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_49
    array-length v4, p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v4, v4, v0, p1, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_4e

    nop

    nop

    :goto_4d
    add-int/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4e
    goto/16 :goto_4

    nop

    nop

    :goto_4f
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_50
    invoke-static {v4, v4, p1, v2, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_2e

    nop

    nop

    :goto_51
    if-lt p1, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lt v2, v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_53
    if-ge v3, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_54
    sub-int v0, p1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_55
    sub-int/2addr v3, v6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_58
    iget v4, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

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

    :goto_5b
    sub-int/2addr v1, v3

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

    :goto_5c
    const v0, 0x12

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_0

    nop

    nop

    :goto_5f
    add-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {v4, v4, p1, v2, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_62
    if-ge v2, p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v4, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {p1, p1, v4, v1, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return v5

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sub-int/2addr v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_4

    nop

    :goto_69
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6b
    invoke-direct {p0, v2, p2}, Ltyu;->1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/util/Collection;)V

    :goto_6c
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-ge v6, v7, :cond_a

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_70
    add-int/2addr v2, p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sub-int/2addr v4, v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_57

    nop

    :goto_73
    shr-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_74
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_75
    add-int v7, p1, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_76
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_77
    invoke-direct {p0, v2}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p1

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

    :goto_78
    invoke-static {p1, p1, v1, v4, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v0, p0, Ltyu;->c:I

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

    nop

    nop

    :goto_7a
    invoke-static {v0, v0, p1, v2, v4}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    add-int/2addr v0, v2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7e
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

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

    :goto_7f
    if-eqz v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_b
    goto/32 :goto_79

    nop

    nop

    nop

    nop
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1c

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_19

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

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

    :goto_5
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_a
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Ltyu;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, v0, p1}, Ltyu;->1478a1c7833aac5e360e0ba4b0c0c568m(ILjava/util/Collection;)V

    goto/32 :goto_b

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    aput-object p1, v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Ltyu;->c:I

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
    invoke-direct {p0, v0}, Ltyu;->7ecc92917e9c4556cc19f457ddc41af8m(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget v0, p0, Ltyu;->c:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const v1, 0x20

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

    :goto_8
    iput v0, p0, Ltyu;->a:I

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

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0}, Ltyu;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    add-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_6

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

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

    :goto_14
    iget v0, p0, Ltyu;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Ltyu;->51550bab6b6440a4fd45f825c221b363m(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p1, p0, Ltyu;->c:I

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    const v0, 0x1d

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

    :goto_5
    const v1, 0x11

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

    :goto_6
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_a

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    add-int/2addr v1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Ltyu;->a(I)I

    move-result v1

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

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, 0x1

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 p1, p1, 0x1

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

    :goto_12
    iget v2, p0, Ltyu;->c:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_15
    aput-object p1, v0, v1

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-object p0, v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_5
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Ltyu;->a:I

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

    :goto_8
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

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
    const-string v0, "ArrayDeque is empty."

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltyu;->c:I

    nop

    goto/32 :goto_1

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
.end method

.method public final clear()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

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
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Ltyu;->c:I

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

    :goto_9
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int/2addr v0, v1

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

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    :goto_e
    iget v1, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const v0, 0xa

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

    :goto_10
    const v1, 0x19

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
    goto/32 :goto_5

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    :goto_13
    iget v1, p0, Ltyu;->a:I

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

    :goto_14
    invoke-direct {p0, v1, v0}, Ltyu;->3fd9578e124c68aa49885b22b61b4ec8m(II)V

    :goto_15
    goto/32 :goto_c

    nop

    nop

    :goto_16
    iput v0, p0, Ltyu;->a:I

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

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ltyu;->indexOf(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_7

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

    :goto_4
    const/4 p1, -0x1

    nop

    goto/32 :goto_3

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
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1, v1, v0, v3, v7}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4f

    nop

    nop

    :goto_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x20

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1, v1, v4, v6, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v5, v0, p1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v2, v1, v0

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

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p1, v3, v1, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_12
    array-length v1, v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v3, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v3, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_16
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_17
    aput-object v3, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_18
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    iget p1, p0, Ltyu;->a:I

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

    :goto_1a
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    if-lt p1, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_0
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v1, v0, v3, v4}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_4c

    nop

    nop

    :goto_1e
    aput-object v1, p1, v6

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

    :goto_1f
    const v1, 0xf

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

    :goto_20
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    aput-object v5, p1, v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    add-int/2addr p1, v1

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

    nop

    :goto_23
    array-length v7, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_24
    iput p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Ltyu;->c:I

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

    :goto_27
    iget v3, p0, Ltyu;->c:I

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
    const/4 v4, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v1, v1, -0x1

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

    :goto_2b
    add-int/lit8 v4, p1, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    aget-object v1, p1, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    shr-int/2addr v3, v4

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0, v0}, Ltyu;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_30
    if-ge v0, p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    :goto_33
    aget-object v3, v0, v6

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

    :goto_34
    add-int/lit8 v1, p1, 0x1

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

    :goto_35
    invoke-virtual {p0}, Ltyu;->removeLast()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Ltyu;->a(I)I

    move-result p1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_37
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_38
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3a
    add-int/lit8 v3, v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    invoke-static {v1, v1, v3, p1, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_31

    nop

    nop

    :goto_3c
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3e
    invoke-static {v0, v0, v6, v4, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_3f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_40
    iget p1, p0, Ltyu;->a:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_41
    if-eqz p1, :cond_3

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

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_43
    if-le v0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Ltyu;->removeFirst()Ljava/lang/Object;

    move-result-object p0

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

    :goto_45
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1a

    nop

    nop

    :goto_48
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_49
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_4b
    if-eq p1, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4e
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_50
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_2

    nop

    :goto_53
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_54
    iget p1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltyu;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    const v1, 0x7

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

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1}, Ltyu;->a(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    aget-object p0, v0, p0

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

    :goto_9
    iget v0, p0, Ltyu;->c:I

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

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v1, p1

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

    :goto_d
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_2
    iget v0, p0, Ltyu;->a:I

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

    :goto_3
    sub-int/2addr v1, p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

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

    :goto_5
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    :goto_7
    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    goto/16 :goto_29

    nop

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    add-int/2addr v1, p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_f
    aget-object v3, v3, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    if-lt v1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

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
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ltyu;->a:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_2

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

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_17
    array-length v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    :goto_1a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return v1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_a

    nop

    :goto_1e
    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

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

    :goto_20
    iget v1, p0, Ltyu;->c:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    aget-object v2, v2, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_24
    const v1, 0x3

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lt v1, v0, :cond_4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    if-lt v1, v0, :cond_6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_6
    :goto_29
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    if-ge v1, v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e

    nop

    nop

    :goto_2c
    iget p0, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

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

    :goto_2f
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

    :goto_30
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_32
    const v0, 0x3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_33
    goto/16 :goto_1a

    nop

    nop

    :goto_34
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-lt v1, v2, :cond_8

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

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_38
    iget p0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_2d

    nop

    :goto_3a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_0
    if-lt v1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto :goto_c

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3f

    nop

    :goto_9
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    if-le v1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_3
    :goto_c
    goto/32 :goto_12

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_4
    goto/32 :goto_3

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Ltyu;->c:I

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

    :goto_12
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_13
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    iget p0, p0, Ltyu;->a:I

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

    :goto_1a
    sub-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    aget-object v3, v3, v0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    :goto_1e
    invoke-static {p1, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1f
    iget v1, p0, Ltyu;->a:I

    nop

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

    :goto_20
    if-gez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-le v1, v0, :cond_6

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

    :cond_6
    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Lrkm;->aV([Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v3, :cond_7

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

    :cond_7
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_26
    aget-object v3, v3, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr v0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2a
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v3, :cond_8

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

    :cond_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, -0x1

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

    :goto_30
    goto/32 :goto_40

    nop

    :goto_31
    if-gt v1, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_33
    invoke-static {p1, v3}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

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

    :goto_35
    goto :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v0, v0, -0x1

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

    :goto_38
    aget-object v1, v1, v0

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

    :goto_39
    array-length p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3a
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_20

    nop

    nop

    :goto_3c
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_a
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3d
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3e
    add-int/2addr v0, v1

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

    :goto_3f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ltyp;->d(I)Ljava/lang/Object;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ltyu;->indexOf(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 11

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_0
    aput-object v6, v2, v5

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

    nop

    :goto_1
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :cond_0
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    move v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    aput-object v6, v7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    goto/16 :goto_59

    nop

    :goto_7
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_8
    move v1, v7

    nop

    :goto_9
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x1

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

    :goto_b
    sub-int/2addr v5, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v8, v5, 0x1

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
    iget-object v7, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-direct {p0, v5}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p1

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

    :goto_f
    if-lt v2, v0, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_1
    goto/32 :goto_49

    nop

    nop

    :goto_10
    if-lt v2, v5, :cond_2

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

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_13
    iget v0, p0, Ltyu;->a:I

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_36

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v5}, Ltyu;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1b
    move v5, v8

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

    :goto_1c
    if-lt v1, v0, :cond_3

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

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v7, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    move v7, v4

    nop

    nop

    :goto_20
    goto/32 :goto_56

    nop

    nop

    :goto_21
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_25
    move v6, v10

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    aget-object v6, v2, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_28
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_29
    iget-object v5, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2b
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    iget-object v8, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move v7, v4

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2f
    move v6, v2

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_10

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    array-length v5, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_3a
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    aget-object v9, v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3c
    aget-object v6, v6, v2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3d
    move v5, v2

    nop

    :goto_3e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/lit8 v10, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_40
    add-int/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_41
    goto :goto_3e

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_9

    nop

    nop

    :goto_44
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aput-object v3, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_46
    goto :goto_4a

    nop

    nop

    :goto_47
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_49
    move v5, v2

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4b
    add-int/lit8 v2, v2, 0x1

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

    :goto_4c
    iget-object v8, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    if-eqz v8, :cond_6

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_1d

    nop

    nop

    :goto_4f
    iget-object v6, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p1, v3, v5, v0}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_51
    aput-object v3, v8, v2

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

    :goto_52
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_60

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_57
    iget v2, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_58
    move v1, v4

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-lt v2, v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_2e

    nop

    nop

    :goto_5c
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5d
    aput-object v9, v8, v6

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5e
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_35

    nop

    :goto_5f
    return v4

    nop

    nop

    :goto_60
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_61
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_63
    goto :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0, v6}, Ltyu;->a(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v1}, Ltyu;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_4

    nop

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

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Ltyu;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_f
    aget-object v2, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    const-string v0, "ArrayDeque is empty."

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

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    :goto_14
    iput v0, p0, Ltyu;->c:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ltyu;->a:I

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

    :goto_16
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_17
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aput-object v3, v0, v1

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

    :goto_1b
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

    nop
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Lrkm;->ad(Ljava/util/List;)I

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    iget v0, p0, Ltyu;->c:I

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

    :goto_7
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

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

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_d
    aget-object v2, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    aput-object v3, v1, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    return-object v2

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Ltyu;->c:I

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

    :goto_16
    iget v0, p0, Ltyu;->a:I

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

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->KXcsRNMeuEMuKgO:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final removeRange(II)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, v4, v5, v6, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    array-length p2, p2

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

    nop

    :goto_2
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/2addr p1, p2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltyu;->a(I)I

    move-result p1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2}, Ltyu;->a(I)I

    move-result p2

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget p2, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Ltyu;->a(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p0, Ltyu;->a:I

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_5b

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p2}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    if-gtz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p2, p1}, Ltyu;->3fd9578e124c68aa49885b22b61b4ec8m(II)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_14
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_15
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    iget-object v3, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

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

    :goto_1c
    invoke-virtual {p0, v2}, Ltyu;->a(I)I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Ltyu;->a(I)I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ltyu;->clear()V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0, v1}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p2}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p2

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

    :goto_21
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_22
    sub-int/2addr p1, v3

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_23
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_24
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5d

    nop

    nop

    :goto_26
    invoke-static {p1, p2, v0}, La;->z(III)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_27
    add-int/2addr v2, p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Ltyu;->a(I)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_29
    invoke-virtual {p0, v4}, Ltyu;->a(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_2b
    sub-int/2addr v1, p2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2c
    sub-int p2, p1, v0

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

    :goto_2d
    iget p2, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    add-int/lit8 v3, p2, 0x1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_2f
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_30
    goto :goto_3a

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_9

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Ltyu;->a(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_33
    add-int/2addr v1, v2

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

    :goto_34
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_35
    iget v0, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 p2, p2, -0x1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v6, v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    iget-object v4, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_39
    iget v2, p0, Ltyu;->c:I

    nop

    :goto_3a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr p2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_3d
    sub-int v0, p2, p1

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

    :goto_3e
    if-nez v0, :cond_3

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
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_4a

    nop

    nop

    :goto_41
    iget v1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sub-int/2addr v2, p2

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_43
    add-int/lit8 v5, p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, p1}, Ltyp;->d(I)Ljava/lang/Object;

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_46
    sub-int v3, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_47
    if-eq v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget v1, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_49
    add-int/lit8 v2, p1, -0x1

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

    :goto_4a
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    add-int/2addr v2, p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

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

    :goto_4d
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4e
    iput p1, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4f
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {v3, v3, p1, v1, v4}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_29

    nop

    nop

    :goto_52
    sub-int/2addr p2, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_53
    if-lt p1, v1, :cond_5

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

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget p1, p0, Ltyu;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    add-int/2addr p1, v0

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

    :goto_57
    add-int/2addr v1, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_59
    add-int v4, v1, p2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {p0, p2, p1}, Ltyu;->3fd9578e124c68aa49885b22b61b4ec8m(II)V

    :goto_5b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-gtz v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    :goto_5d
    return-void

    nop

    :goto_5e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 11

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    move v5, v8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    if-nez v8, :cond_0

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_0
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, v5}, Ltyu;->d5484163cd8d335e6b17663474ff5f2bm(I)I

    move-result v5

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

    :goto_5
    move v6, v2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    array-length v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_8
    aput-object v3, v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    move v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    iget-object v5, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ltyu;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_f
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v7, :cond_3

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

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_12
    iget-object v0, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, v3, v5, v0}, Lrkm;->aR([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, v5}, Ltyu;->19e596a3e324281407eb5c11093c0152m(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    add-int/lit8 v8, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_17
    if-lt v2, v5, :cond_4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v7, v4

    nop

    nop

    :goto_19
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_6

    nop

    :goto_1b
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v8, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_21
    if-lt v1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v6, v2, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    :goto_24
    iget-object v6, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

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

    :goto_26
    aget-object v9, v8, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v6, v10

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ltyu;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_44

    nop

    nop

    :goto_29
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_59

    nop

    nop

    :goto_2b
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_2c
    aput-object v6, v7, v5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2d
    const v0, 0x3

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

    nop

    nop

    :goto_2e
    move v7, v1

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

    :goto_2f
    invoke-virtual {p0, v6}, Ltyu;->a(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_30
    aget-object v6, v6, v2

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-lt v2, v0, :cond_8

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_36
    goto/16 :goto_50

    nop

    nop

    :goto_37
    goto/32 :goto_41

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_39
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    aput-object v3, v2, v1

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

    :goto_3c
    iget-object v8, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v0, v2

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_40
    iput p1, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_41
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_43
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_44
    iget p1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move v5, v2

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-lt v2, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_49
    move v7, v4

    nop

    nop

    :goto_4a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    aput-object v6, v2, v5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return v1

    nop

    nop

    :goto_4d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_4f
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_51
    const/4 v1, 0x0

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

    :goto_52
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_38

    nop

    nop

    :goto_54
    if-lez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_a
    goto/32 :goto_52

    nop

    :goto_55
    goto :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_57
    add-int/lit8 v10, v6, 0x1

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

    nop

    :goto_58
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_59
    move v1, v7

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v7, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5c
    aput-object v9, v8, v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5d
    sub-int/2addr v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_60
    iget v2, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_61
    array-length v0, v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_62
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_64
    move v1, v4

    nop

    :goto_65
    goto/32 :goto_58

    nop

    nop

    nop

    nop
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aput-object p2, p0, p1

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

    :goto_1
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    iget v0, p0, Ltyu;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ltyu;->c:I

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
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Ltyu;->b:[Ljava/lang/Object;

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

    :goto_7
    aget-object v0, p0, p1

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

    :goto_8
    add-int/2addr v0, p1

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
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Ltyu;->c:I

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

    :goto_1
    invoke-virtual {p0, v0}, Ltyu;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

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

    :goto_3
    return-object p0

    nop

    nop

    nop
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltyu;->a:I

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

    :goto_3
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Ltyu;->a(I)I

    move-result v0

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

    :goto_5
    iget v1, p0, Ltyu;->a:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, p1, v4, v1, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_12

    nop

    nop

    :goto_7
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-static {v2, p1, v1, v0, v3}, Lrkm;->bq([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1a

    nop

    nop

    :goto_c
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    array-length v3, v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, [Ljava/lang/Object;

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lrkm;->aM(I[Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

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

    :goto_12
    iget-object v1, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    array-length v2, v1

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

    :goto_14
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p1, v2, v4, v0}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :goto_16
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Ltyu;->c:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    array-length v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    goto :goto_16

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, p0, Ltyu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    if-lt v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    :goto_21
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

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

    :goto_22
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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

    :goto_25
    iget v3, p0, Ltyu;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1f

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget p0, p0, Ltyu;->c:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Ltyu;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2a
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_2c
    if-lt v0, v1, :cond_3

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
