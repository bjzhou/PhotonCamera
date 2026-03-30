.class public final Ltzh;
.super Ltyp;
.source "PG"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lucw;


# static fields
.field public static final a:Ltzh;


# instance fields
.field public b:[Ljava/lang/Object;

.field public c:I

.field public d:Z


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
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

    :goto_1
    iput v0, p0, Ltzh;->modCount:I

    nop

    nop

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

    :goto_3
    iget v0, p0, Ltzh;->modCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(II)V
    .locals 3

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

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
    add-int/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    array-length v2, v1

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

    :goto_5
    iget v0, p0, Ltzh;->c:I

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
    if-gt v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, v0}, Lrkm;->L([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-static {v0, v0, v2, p1, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    iput-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    :goto_13
    add-int v2, p1, p2

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
    iget v1, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_16
    if-gez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

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

    :goto_18
    invoke-static {v2, v0}, Lrkm;->br(II)I

    move-result v0

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

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p0, Ljava/lang/OutOfMemoryError;

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

    :goto_1b
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ltzh;->b:[Ljava/lang/Object;

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

    :goto_1d
    iget p1, p0, Ltzh;->c:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ltzh;->a:Ltzh;

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

    :goto_1
    iput-boolean v1, v0, Ltzh;->d:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    const v1, 0x1d

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

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

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

    :goto_6
    invoke-direct {v0, v1}, Ltzh;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    new-instance v0, Ltzh;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ltzh;-><init>([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

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

.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_3

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
    new-array p1, p1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltyp;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public synthetic constructor <init>([B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ltzh;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/16 p1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static final synthetic a(Ltzh;)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltzh;->modCount:I

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

    nop

    nop
.end method

.method private final b508e15e3074a943d75a4e31a64e3015m()Ljava/lang/Object;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ltzq;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, v1}, Ltzq;-><init>(Ljava/util/Collection;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/io/NotSerializableException;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Ltzh;->d:Z

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
    const-string v0, "The list cannot be serialized while it is being built."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    const/4 v1, 0x0

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

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    throw p0

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ltzh;->g(ILjava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, La;->y(II)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, p1}, Ltzh;->g(ILjava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, v0}, La;->y(II)V

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, v0}, Ltzh;->f(ILjava/util/Collection;I)V

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

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
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltzh;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-gtz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p2}, Ljava/util/Collection;->size()I

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
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    const/4 p0, 0x0

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
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget v1, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1, p1, v0}, Ltzh;->f(ILjava/util/Collection;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_8
    const v0, 0x13

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    :goto_13
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b(IILjava/util/Collection;Z)I
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    invoke-interface {p3, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

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

    :goto_2
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    aput-object v0, v4, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p3, p2}, Lrkm;->J([Ljava/lang/Object;II)V

    goto/32 :goto_11

    nop

    nop

    :goto_5
    iput p1, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    move v0, v2

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

    :goto_7
    aget-object v0, v4, v0

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

    :goto_8
    iget-object p1, p0, Ltzh;->b:[Ljava/lang/Object;

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

    :goto_9
    goto/16 :goto_22

    nop

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    return p4

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_29

    nop

    nop

    :goto_e
    invoke-static {v0, v0, p3, p1, p2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ltzh;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    if-gtz p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    sub-int p3, p2, p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    iget-object v4, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    if-lt v0, p2, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v3, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    sub-int p4, p2, v1

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

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    add-int p3, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    if-eq v3, p4, :cond_2

    nop

    nop

    goto/32 :goto_20

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

    :goto_1d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    iget p1, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    :goto_21
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/2addr p1, p2

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

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_25
    add-int/2addr v0, p1

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

    :goto_26
    iget p2, p0, Ltzh;->c:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    sub-int/2addr p1, p4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_28
    iget p2, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aget-object v3, v3, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop
.end method

.method public final c()I
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
    iget p0, p0, Ltzh;->c:I

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
.end method

.method public final clear()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Ltzh;->i(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltzh;->e(I)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    invoke-static {v0, v0, p1, v2, v3}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    add-int/lit8 p1, p1, -0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

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

    nop

    nop

    nop

    :goto_8
    return-object v1

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

    :goto_a
    invoke-static {p1, v0}, Lrkm;->I([Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_b
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ltzh;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_b

    nop

    nop

    :goto_d
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

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iget-object p1, p0, Ltzh;->b:[Ljava/lang/Object;

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p0, Ltzh;->c:I

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

    :goto_13
    iput p1, p0, Ltzh;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    const v0, 0x17

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    iget v3, p0, Ltzh;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    aget-object v1, v0, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ljava/util/List;

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
    goto/32 :goto_b

    nop

    nop

    nop

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
    move v0, v2

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    instance-of v1, p1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v2, p0, p1}, Lrkm;->K([Ljava/lang/Object;IILjava/util/List;)Z

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

    :goto_e
    goto :goto_4

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    if-ne p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v2

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

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

    :goto_16
    iget p0, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_3

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final f(ILjava/util/Collection;I)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    add-int v2, p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

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

    :goto_6
    aput-object v3, v1, v2

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

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p3}, Ltzh;->51550bab6b6440a4fd45f825c221b363m(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    :goto_d
    const v1, 0x14

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

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_f

    nop

    nop

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
    if-lt v0, p3, :cond_1

    nop

    goto/32 :goto_4

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

    :goto_15
    const v0, 0x14

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

    :goto_16
    invoke-direct {p0}, Ltzh;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final g(ILjava/lang/Object;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Ltzh;->51550bab6b6440a4fd45f825c221b363m(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ltzh;->3fd9578e124c68aa49885b22b61b4ec8m()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    aput-object p2, p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    aget-object p0, p0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 0

    goto/32 :goto_2

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Ltzh;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_6

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
.end method

.method public final hashCode()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltzh;->c:I

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

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-static {v0, v1, p0}, Lrkm;->G([Ljava/lang/Object;II)I

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

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

    :goto_6
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

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop
.end method

.method public final i(II)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ltzh;->c:I

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

    :goto_1
    iget-object p1, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Ltzh;->c:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    sub-int/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v0, p1, v1, v2}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    invoke-direct {p0}, Ltzh;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_b
    sub-int v1, v0, p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_f
    invoke-static {p1, v1, v0}, Lrkm;->J([Ljava/lang/Object;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    const v1, 0x1a

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    add-int v1, p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/16 :goto_16

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x1

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

    :goto_4
    return v0

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    aget-object v1, v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 p0, -0x1

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

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

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object v1, p0, Ltzh;->b:[Ljava/lang/Object;

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

    :goto_10
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Ltzh;->c:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, 0x1

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

    :goto_13
    goto/32 :goto_9

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final isEmpty()Z
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Ltzh;->c:I

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
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ltzh;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltzh;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v1, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v0, v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x14

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, p0, Ltzh;->b:[Ljava/lang/Object;

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
    aget-object v2, v2, v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    return v0

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    return-object p0

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ltzh;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

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

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltzg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0}, La;->y(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget v0, p0, Ltzh;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_b
    invoke-direct {v0, p0, p1, v1}, Ltzg;-><init>(Ltzh;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ltzh;->indexOf(Ljava/lang/Object;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ltyp;->d(I)Ljava/lang/Object;

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    if-gez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    if-gtz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltzh;->c:I

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1, v0, p1, v1}, Ltzh;->b(IILjava/util/Collection;Z)I

    move-result p0

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
    rem-int v0, v0, v1

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

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    const/4 v1, 0x0

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

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x15

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
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

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
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1, v0, p1, v2}, Ltzh;->b(IILjava/util/Collection;Z)I

    move-result p0

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Ltzh;->c:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, La;->x(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Ltzh;->c:I

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
    invoke-virtual {p0}, Ltzh;->h()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    aput-object p2, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    aget-object v0, p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final subList(II)Ljava/util/List;
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v1, p2

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

    :goto_2
    const/4 v5, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {p1, p2, v0}, La;->z(III)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    move v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v1 .. v6}, Ltzf;-><init>([Ljava/lang/Object;IILtzf;Ltzh;)V

    goto/32 :goto_a

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

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    iget-object v2, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Ltzh;->c:I

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

    :goto_a
    return-object p2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    sub-int v4, p2, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1

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

    :goto_10
    move-object v6, p0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    new-instance p2, Ltzf;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    goto/32 :goto_4

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

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    goto/32 :goto_c

    nop

    :goto_a
    invoke-static {v0, v1, p0}, Lrkm;->aT([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Ltzh;->c:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Ltzh;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    nop

    :goto_7
    iget-object p0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1}, Lrkm;->aM(I[Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

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

    :goto_f
    return-object p1

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    const v1, 0xd

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

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_17
    invoke-static {p0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    invoke-static {v0, p1, v2, v2, v1}, Lrkm;->bh([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_5

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
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-static {v0, v1, v2, p0}, Lrkm;->H([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object p0

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

    :goto_3
    goto/32 :goto_1

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v0, 0x1e

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

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    iget v2, p0, Ltzh;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :goto_b
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

    :goto_c
    iget-object v0, p0, Ltzh;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
