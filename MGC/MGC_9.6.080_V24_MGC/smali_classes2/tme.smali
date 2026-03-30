.class public final Ltme;
.super Ltjj;
.source "PG"


# static fields
.field public static final a:[I

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final d:I

.field public final e:Ltjj;

.field public final f:Ltjj;

.field public final g:I

.field private final h:I


# direct methods
.method private 7c317c59441d6cc7b89965a9c204159bm(Ljava/io/ObjectInputStream;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/io/InvalidObjectException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "RopeByteStream instances are not to be serialized directly"

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
    throw p0

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
    const/16 v0, 0x2f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Ltme;->a:[I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data

    :goto_3
    new-array v0, v0, [I

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltjj;Ltjj;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ltme;->f:Ltjj;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Ltme;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    invoke-virtual {p2}, Ltjj;->d()I

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

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
    invoke-virtual {p2}, Ltjj;->f()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Ltme;->e:Ltjj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    add-int/lit8 p1, p1, 0x1

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

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    iput v0, p0, Ltme;->d:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Ltme;->h:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ltjj;->f()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ltjj;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(I)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    if-ge p0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const p0, 0x7fffffff

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

    :goto_5
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x2f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    aget p0, v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    sget-object v0, Ltme;->a:[I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static g(Ltjj;Ltjj;)Ltjj;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    add-int v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v2, v0, v1}, Ltjj;->u([BII)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v2, v3, v0}, Ltjj;->u([BII)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    new-instance p0, Ltji;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ltjj;->d()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-direct {p0, v2}, Ltji;-><init>([B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_d
    new-array v2, v2, [B

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

    :goto_e
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

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

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)B
    .locals 1

    goto/32 :goto_1

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
    iget v0, p0, Ltme;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p1, v0}, Ltme;->r(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ltme;->b(I)B

    move-result p0

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

.method public final b(I)B
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Ltjj;->b(I)B

    move-result p0

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

    :goto_3
    iget-object p0, p0, Ltme;->e:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Ltjj;->b(I)B

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Ltme;->h:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p1, v0

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

.method public final d()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Ltme;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method protected final e([BIII)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, p2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ltme;->e:Ltjj;

    nop

    nop

    goto/32 :goto_18

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ltme;->e:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2, p3, p4}, Ltjj;->e([BIII)V

    goto/32 :goto_14

    nop

    nop

    :goto_9
    sub-int/2addr p4, v1

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

    nop

    :goto_a
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-le v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget v1, p0, Ltme;->h:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

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
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

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
    if-ge p2, v1, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, p1, p2, p3, p4}, Ltjj;->e([BIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1, p2, p3, p4}, Ltjj;->e([BIII)V

    goto/32 :goto_10

    nop

    nop

    :goto_19
    sub-int/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p1, p2, p3, v1}, Ltjj;->e([BIII)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    add-int/2addr p3, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    goto/32 :goto_19

    nop

    nop

    :goto_0
    if-eq v7, v11, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_28

    nop

    nop

    :goto_2
    new-instance v1, Ltmd;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Ltjh;->d()I

    move-result v8

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
    if-eqz v11, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_c
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int/2addr v7, v10

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    move v6, v2

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

    nop

    :goto_11
    add-int/2addr v5, v10

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ltjj;->d()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

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

    :goto_15
    if-eq v10, v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4}, Ltmd;->a()Ltjh;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Ltjj;->c:I

    nop

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

    :goto_18
    add-int/2addr v6, v10

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

    :goto_19
    const v0, 0x16

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1a
    goto/16 :goto_47

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1c
    move v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Ltmd;->a()Ltjh;

    move-result-object p1

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

    :goto_1e
    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    :goto_1f
    if-nez v3, :cond_7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_20
    move v0, v2

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

    :goto_21
    move v5, v2

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

    :goto_22
    const/4 v0, 0x1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_23
    goto/32 :goto_4f

    nop

    :goto_24
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-int/2addr v8, v5

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v2

    nop

    nop

    :goto_27
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v0

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v1, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v3, v5, v10}, Ltjh;->g(Ltjj;II)Z

    move-result v11

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2e
    move v6, v5

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2f
    iget v11, p0, Ltme;->d:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_30
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_54

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_47

    nop

    nop

    :goto_33
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    return v2

    nop

    :goto_35
    goto/32 :goto_3d

    nop

    nop

    :goto_36
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_37
    if-ge v7, v11, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v3, p1, Ltjj;->c:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v4, Ltmd;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_3a
    instance-of v1, p1, Ltjj;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Ltmd;->a()Ltjh;

    move-result-object v3

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

    :goto_3d
    check-cast p1, Ltjj;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3e
    invoke-virtual {v3, p1, v6, v10}, Ltjh;->g(Ltjj;II)Z

    move-result v11

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return v0

    nop

    :goto_40
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eq p1, p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_b

    nop

    goto/32 :goto_24

    nop

    :cond_b
    goto/32 :goto_23

    nop

    :goto_45
    invoke-virtual {v1}, Ltmd;->a()Ltjh;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_46
    move v7, v6

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Ltjh;->d()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v1, p0, Ltme;->d:I

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

    :goto_4a
    sub-int/2addr v9, v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4b
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_4e
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_50
    if-eq v1, v3, :cond_c

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_51
    invoke-direct {v1, p0}, Ltmd;-><init>(Ltjj;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_52
    if-eq v10, v8, :cond_d

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_53
    invoke-direct {v4, p1}, Ltmd;-><init>(Ltjj;)V

    goto/32 :goto_16

    nop

    nop

    :goto_54
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget v1, p0, Ltme;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop
.end method

.method protected final f()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Ltme;->g:I

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

    nop
.end method

.method public final h()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Ltme;->g:I

    nop

    goto/32 :goto_6

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ltme;->c(I)I

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

    nop

    :goto_6
    iget p0, p0, Ltme;->d:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ge p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
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
.end method

.method protected final i(III)I
    .locals 2

    goto/32 :goto_12

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x2

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

    :goto_2
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, p2, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    sub-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_b
    if-ge p2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    if-le v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

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

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1, p2, p3}, Ltjj;->i(III)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget v1, p0, Ltme;->h:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    sub-int/2addr v1, p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p2, p3}, Ltjj;->i(III)I

    move-result p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, p2, v1}, Ltjj;->i(III)I

    move-result p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Ltme;->e:Ltjj;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Ltme;->e:Ltjj;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    return p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1, p2, p3}, Ltjj;->i(III)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p2, 0x0

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
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltmc;

    nop

    goto/32 :goto_2

    nop

    nop

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
    invoke-direct {v0, p0}, Ltmc;-><init>(Ltme;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(II)Ltjj;
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ltjj;->j(II)Ltjj;

    move-result-object p0

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2, v0}, Ltme;->l(III)I

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

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1, v1}, Ltjj;->j(II)Ltjj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-le p2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Ltjj;->b:Ltjj;

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
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ltjj;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Ltme;->h:I

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

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    return-object p2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

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
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p0, p2}, Ltjj;->j(II)Ltjj;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    iget v1, p0, Ltme;->d:I

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

    :goto_17
    goto/32 :goto_1c

    nop

    :goto_18
    invoke-direct {p2, p1, p0}, Ltme;-><init>(Ltjj;Ltjj;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr p2, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ltme;->e:Ltjj;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x12

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1, p2}, Ltjj;->j(II)Ltjj;

    move-result-object p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_21
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Ltme;->f:Ltjj;

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

    :goto_23
    if-ge p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_25
    new-instance p2, Ltme;

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

    :goto_26
    if-lez v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    :goto_27
    iget v0, p0, Ltme;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    sub-int/2addr p1, v0

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

    nop

    nop

    :goto_29
    iget-object p0, p0, Ltme;->e:Ltjj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    iget p0, p0, Ltme;->h:I

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
.end method

.method public final k(Ltjc;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ltjj;->k(Ltjc;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Ltme;->e:Ltjj;

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
    invoke-virtual {p0, p1}, Ltjj;->k(Ltjc;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ltme;->f:Ltjj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final m()Ltjg;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ltmc;

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
    invoke-direct {v0, p0}, Ltmc;-><init>(Ltme;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ltjj;->t()[B

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ltji;

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

    :goto_3
    invoke-direct {v0, p0}, Ltji;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method
