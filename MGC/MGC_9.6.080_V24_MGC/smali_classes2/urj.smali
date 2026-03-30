.class public Lurj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lurj;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:[B

.field public transient c:I

.field public transient d:Ljava/lang/String;


# direct methods
.method private final 0cf909ba289622071a1fdd6b27800b52m(Ljava/io/ObjectOutputStream;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length v0, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Lurj;->b:[B

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->write([B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lurj;->b:[B

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method private final 7c317c59441d6cc7b89965a9c204159bm(Ljava/io/ObjectInputStream;)V
    .locals 5

    goto/32 :goto_24

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    :goto_1
    invoke-direct {p1, v1}, Lurj;-><init>([B)V

    goto/32 :goto_20

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

    goto/32 :goto_11

    nop

    nop

    :goto_3
    const-string v1, "b"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    const-string p0, "byteCount < 0: "

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

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
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw p1

    nop

    nop

    :goto_10
    goto/32 :goto_0

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

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    new-array v1, v0, [B

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

    :goto_13
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p1, Lurj;->b:[B

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

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    if-lt v2, v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v3, v4, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1f
    add-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    const-class v0, Lurj;

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

    :goto_21
    goto/16 :goto_5

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_23
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    const v0, 0x12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

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

    :goto_27
    new-instance p0, Ljava/io/EOFException;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_28
    if-gez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_29
    new-instance p1, Lurj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    sub-int v3, v0, v2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-array v1, v1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lurj;

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
    const v0, 0x3

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
    return-void

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

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
    sput-object v0, Lurj;->a:Lurj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lurj;-><init>([B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lurj;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d(Ljava/lang/String;)Lurj;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lucu;->A(Ljava/lang/String;)[B

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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
    iput-object p0, v0, Lurj;->d:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lurj;

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
    invoke-direct {v0, v1}, Lurj;-><init>([B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method


# virtual methods
.method public a(I)B
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    aget-byte p0, p0, p1

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

    :goto_2
    iget-object p0, p0, Lurj;->b:[B

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

.method public b()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    array-length p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lurj;->b:[B

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
.end method

.method public c()Ljava/lang/String;
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    and-int/lit8 v6, v6, 0xf

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    sget-object v6, Lurv;->a:[C

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lurj;->b:[B

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/String;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aput-char v4, v1, v5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    add-int/lit8 v2, v2, 0x1

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    and-int/lit8 v4, v4, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    array-length v0, p0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    aget-char v6, v7, v6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aget-byte v4, p0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-array v1, v1, [C

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_19
    return-object p0

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    shr-int/lit8 v6, v4, 0x4

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    add-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput-char v6, v1, v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v1, v0, v0

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

    :goto_1f
    sget-object v7, Lurv;->a:[C

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

    :goto_20
    aget-char v4, v6, v4

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

    :goto_21
    const v1, 0xb

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_22
    add-int/lit8 v5, v3, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v4}, Lurj;->a(I)B

    move-result v7

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

    :goto_2
    and-int/lit16 v7, v7, 0xff

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

    :goto_3
    if-lt v4, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_4
    move v4, v3

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v3, v5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

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

    :goto_9
    if-ge v0, v1, :cond_1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const/4 p0, -0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lurj;->b()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_12
    if-ge v6, v7, :cond_3

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

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    return v3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lurj;

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

    :goto_16
    and-int/lit16 v6, v6, 0xff

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

    :goto_17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    if-eq v6, v7, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v4}, Lurj;->a(I)B

    move-result v6

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

    :goto_20
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1c

    nop

    :goto_22
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    const v1, 0x6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Lurj;->b()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_a

    nop

    :goto_28
    goto/32 :goto_c

    nop

    nop
.end method

.method public e(I[BII)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2, p3, p4}, Lucu;->E([BI[BII)Z

    move-result p0

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

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sub-int/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    if-gez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    iget-object p0, p0, Lurj;->b:[B

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    array-length v0, p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    sub-int/2addr v0, p4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    :goto_c
    if-le p1, v0, :cond_1

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    if-le p3, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_1

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

    :goto_f
    if-gez p1, :cond_4

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

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    array-length v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    instance-of v1, p1, Lurj;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    move v0, v2

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-eq p1, p0, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lurj;->b()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v3, p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    iget-object p0, p0, Lurj;->b:[B

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_6

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    check-cast p1, Lurj;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v1, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
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

    goto/32 :goto_17

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    invoke-virtual {p1, v2, p0, v2, v3}, Lurj;->e(I[BII)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    return v0

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public f()[B
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
    iget-object p0, p0, Lurj;->b:[B

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
.end method

.method public g(Lurj;I)Z
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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0, p0, v0, p2}, Lurj;->e(I[BII)Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lurj;->b:[B

    nop

    nop

    goto/32 :goto_1

    nop

    nop

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

.method public hashCode()I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object v0, p0, Lurj;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lurj;->c:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget v0, p0, Lurj;->c:I

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

.method public toString()Ljava/lang/String;
    .locals 17

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v7, 0x40

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v5, v7, :cond_0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_95

    nop

    :goto_3
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_4
    iput-object v5, v0, Lurj;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v5, v7, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_b
    iget-object v4, v0, Lurj;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v14, 0x2

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_5c

    nop

    nop

    :goto_f
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_86

    nop

    nop

    :goto_11
    goto/16 :goto_95

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_14
    add-int/lit8 v10, v5, 0x1

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_93

    nop

    nop

    nop

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
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_cf

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ge v9, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_2
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lt v3, v9, :cond_3

    nop

    goto/32 :goto_117

    nop

    nop

    :cond_3
    goto/32 :goto_88

    nop

    nop

    :goto_21
    const/4 v6, 0x0

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v9, v11, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    if-le v2, v10, :cond_5

    nop

    goto/32 :goto_121

    nop

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

    :goto_25
    if-ne v9, v12, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_26
    xor-int/2addr v3, v10

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_27
    move v5, v10

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    const/4 v13, -0x2

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_29
    aget-byte v10, v1, v10

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_22

    nop

    :goto_2c
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v4, v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq v6, v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7c

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq v13, v15, :cond_9

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    :cond_9
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    shl-int/lit8 v9, v9, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_32
    if-ne v5, v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_a
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_33
    invoke-static {v5, v0, v1}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_34
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_35
    const-string v3, "[size="

    nop

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

    nop

    :goto_36
    if-lt v4, v2, :cond_b

    nop

    goto/32 :goto_5c

    nop

    :cond_b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v9, 0x800

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const v0, 0x6

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v9, v11, :cond_c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_6

    nop

    nop

    :goto_3a
    shl-int/lit8 v11, v11, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_3b
    const v9, 0x10ffff

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Lurj;

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_3d
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3f
    aget-byte v9, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_42
    if-ne v9, v13, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_43
    if-le v5, v7, :cond_e

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_44
    if-eqz v2, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_45
    if-eqz v4, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_102

    nop

    nop

    nop

    :goto_46
    if-ne v5, v7, :cond_11

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_47
    add-int/lit8 v10, v4, 0x1

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/lit8 v3, v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_49
    const-string v2, "\u2026]"

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4a
    if-lt v9, v15, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    aget-byte v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v7, "\r"

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_4d
    invoke-virtual/range {p0 .. p0}, Lurj;->c()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_4e
    xor-int/2addr v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v10, v9

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_50
    and-int/lit16 v10, v3, 0xc0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_53

    nop

    nop

    :goto_53
    add-int/lit8 v10, v5, 0x1

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_56
    shl-int/lit8 v9, v9, 0x6

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v5, 0x7f

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_58
    if-lt v6, v4, :cond_13

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :cond_13
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_59
    add-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v7, "\n"

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_e0

    nop

    nop

    :goto_5c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v0, "[size=0]"

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v5, v7, v8}, Luch;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    shr-int/lit8 v3, v9, 0x3

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_60
    if-ge v3, v14, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move v6, v8

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v7, Luei;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_95

    nop

    :goto_66
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_67
    const v1, 0xd

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_68
    and-int/lit16 v13, v10, 0xc0

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_6a
    if-eq v3, v11, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_76

    nop

    nop

    :goto_6b
    if-ne v9, v13, :cond_16

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    :cond_16
    goto/32 :goto_25

    nop

    nop

    :goto_6c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_6d
    invoke-static {v4, v1, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    aget-byte v10, v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_6f
    const v9, 0xe000

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_d

    nop

    :goto_73
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const-string v3, "[hex="

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_95

    nop

    nop

    :goto_77
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0}, Lurj;->c()Ljava/lang/String;

    move-result-object v0

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

    :goto_79
    if-ne v5, v7, :cond_17

    nop

    goto/32 :goto_66

    nop

    :cond_17
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    array-length v5, v4

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v4, v0, Lurj;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_f0

    nop

    :goto_7e
    goto/32 :goto_b9

    nop

    nop

    :goto_7f
    if-eq v3, v13, :cond_18

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    :cond_18
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_81
    xor-int/2addr v3, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-ne v5, v7, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_19
    goto/32 :goto_106

    nop

    nop

    :goto_83
    xor-int/lit16 v10, v10, 0xf80

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_84
    iget-object v0, v0, Lurj;->b:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_85
    if-lt v3, v9, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_86
    const-string v0, " text="

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_87
    add-int/lit8 v10, v4, 0x2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_88
    if-ne v5, v7, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_1b
    goto/32 :goto_116

    nop

    nop

    :goto_89
    if-le v2, v10, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_8a
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_8b
    const/16 v12, 0xd

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_8c
    invoke-static {v5, v7, v8}, Luch;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_8d
    if-gez v9, :cond_1d

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_1d
    goto/32 :goto_f3

    nop

    nop

    :goto_8e
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_8f
    and-int/lit16 v11, v10, 0xc0

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_90
    move/from16 v14, v16

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v11, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_92
    const-string v8, "\\n"

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-ge v9, v5, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_1e
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-ne v5, v7, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_1f
    :goto_95
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_96
    add-int/lit8 v10, v4, 0x1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_97
    if-lt v9, v5, :cond_20

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const-string v8, "\\\\"

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const v11, 0xfffd

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-gez v9, :cond_21

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_9c
    if-eq v10, v15, :cond_22

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_9d
    and-int/lit16 v3, v13, 0xc0

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_9e
    if-lt v3, v9, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_a0
    if-ne v5, v7, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    shr-int/lit8 v10, v9, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_a2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_a3
    const-string v8, "\\r"

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v5, v7, v8}, Luch;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v10, -0x1e080

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a6
    if-ne v5, v7, :cond_25

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    xor-int/2addr v9, v10

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_95

    nop

    nop

    :goto_a9
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    shl-int/lit8 v10, v10, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_ab
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/16 v15, 0x80

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_66

    nop

    nop

    :goto_b0
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b1
    const v9, 0xe000

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    aget-byte v3, v1, v10

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-ne v5, v7, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_d6

    nop

    nop

    :goto_b6
    iget-object v1, v0, Lurj;->b:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-ne v5, v7, :cond_27

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_51

    nop

    nop

    :goto_b8
    if-eq v3, v15, :cond_28

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_28
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_b9
    if-ne v5, v7, :cond_29

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_ba
    if-ne v10, v7, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_2a
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_bb
    const/high16 v12, 0x10000

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_bd
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_be
    const-string v0, "[text="

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_bf
    add-int/2addr v6, v14

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c0
    and-int/lit16 v13, v3, 0xc0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c1
    if-ne v5, v7, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    new-instance v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_95

    nop

    :goto_c4
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_c5
    add-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_c6
    if-ne v5, v7, :cond_2c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_2c
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const-string v3, " hex="

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c8
    add-int/lit8 v4, v4, 0x4

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object v4, v5

    nop

    nop

    :goto_ca
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-lt v9, v11, :cond_2d

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const v14, 0xd800

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_cd
    move v10, v14

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    const v13, 0x381f80

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d0
    if-ne v9, v12, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_2e
    goto/32 :goto_23

    nop

    nop

    :goto_d1
    const/4 v8, -0x1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-gt v3, v9, :cond_2f

    nop

    goto/32 :goto_fd

    nop

    :cond_2f
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    xor-int/2addr v3, v10

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_d4
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_d5
    if-lt v3, v12, :cond_30

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_95

    nop

    :goto_d7
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    if-eq v11, v15, :cond_31

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_da
    sget-object v3, Lurv;->a:[C

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_95

    nop

    :goto_dc
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_dd
    if-le v2, v3, :cond_32

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_de
    add-int/lit8 v13, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_df
    add-int/lit8 v4, v4, 0x1

    nop

    :goto_e0
    goto/32 :goto_36

    nop

    nop

    :goto_e1
    shr-int/lit8 v10, v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_e2
    invoke-direct {v0, v1}, Lurj;-><init>([B)V

    goto/32 :goto_78

    nop

    nop

    :goto_e3
    const-string v7, "\\"

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_e5
    goto/32 :goto_a0

    nop

    nop

    :goto_e6
    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e7
    add-int/lit8 v11, v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_e8
    xor-int/2addr v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    add-int v0, v0, v1

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

    :goto_ea
    xor-int/2addr v3, v13

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_eb
    if-eq v10, v13, :cond_33

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    :cond_33
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_ec
    if-lez v0, :cond_34

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_18

    nop

    :goto_ed
    if-eq v13, v15, :cond_35

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_ee
    if-ne v5, v7, :cond_36

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    if-lt v9, v12, :cond_37

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_37
    :goto_f0
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    shl-int/lit8 v10, v13, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_f2
    aget-byte v9, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    add-int/lit8 v10, v5, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f4
    and-int/lit16 v13, v11, 0xc0

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_95

    nop

    :goto_f6
    goto/32 :goto_d5

    nop

    nop

    :goto_f7
    if-eq v13, v15, :cond_38

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_38
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_f8
    if-lt v3, v12, :cond_39

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_39
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    xor-int/2addr v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_fa
    goto/16 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-ne v5, v7, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_3a
    goto/32 :goto_db

    nop

    nop

    nop

    :goto_100
    const/16 v16, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-virtual/range {p0 .. p0}, Lurj;->f()[B

    move-result-object v4

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_103
    goto/16 :goto_34

    nop

    :goto_104
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_105
    const/16 v5, 0xa0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_106
    goto/16 :goto_95

    nop

    :goto_107
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_108
    shl-int/lit8 v9, v9, 0xc

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/16 :goto_34

    nop

    :goto_10a
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_10e
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_10f
    add-int/lit8 v14, v10, 0x1

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-ge v3, v14, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    :cond_3b
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_112
    add-int/lit8 v9, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_113
    if-ne v5, v7, :cond_3c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_105

    nop

    nop

    :goto_114
    if-eq v10, v13, :cond_3d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_3d
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_115
    aget-byte v13, v1, v13

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_116
    goto/16 :goto_95

    nop

    nop

    :goto_117
    goto/32 :goto_112

    nop

    nop

    :goto_118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_119
    const/16 v13, 0xa

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    aget-byte v11, v1, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_11c
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

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

    :goto_11d
    if-ne v5, v7, :cond_3e

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_3e
    goto/32 :goto_fc

    nop

    nop

    :goto_11e
    const-string v1, "]"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    if-ne v5, v7, :cond_3f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_3f
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_120
    goto/16 :goto_95

    nop

    :goto_121
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_122
    array-length v2, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_123
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_110

    nop

    nop
.end method
