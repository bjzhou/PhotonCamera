.class public final Lpby;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lpby;

.field public static final b:Lpby;

.field public static final c:Lpby;


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v2, Lpby;->a:Lpby;

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

    :goto_1
    const v1, 0x15

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v2}, Lpby;->k(II)Lpby;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lpby;->c:Lpby;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Lpby;->k(II)Lpby;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {v2, v3}, Lpby;->k(II)Lpby;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_13

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
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

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

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    const v0, 0xe

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 v0, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x10

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

    :goto_12
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    sput-object v4, Lpby;->b:Lpby;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1, v0}, Lpby;->k(II)Lpby;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(II)V
    .locals 0

    goto/32 :goto_3

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

    nop

    nop

    :goto_1
    iput p2, p0, Lpby;->e:I

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
    iput p1, p0, Lpby;->d:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public static g(Lpck;)Lpby;
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lpck;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

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

    :goto_2
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    iget p0, p0, Lpck;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lpck;->a:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lpck;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public static i(Landroid/util/Size;)Lpby;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static j(Lpck;)Lpby;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lpck;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static k(II)Lpby;
    .locals 4

    goto/32 :goto_15

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

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    return-object v0

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
    new-instance v0, Lpby;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    int-to-long v0, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v2, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    div-int/2addr p0, v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, p1}, Lpby;-><init>(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    div-int/2addr p1, v0

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    :goto_15
    const v0, 0x9

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

    :goto_16
    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop
.end method


# virtual methods
.method public final a()D
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    return-wide v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-double v1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-double v3, v0

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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    iget v0, p0, Lpby;->e:I

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

    :goto_9
    iget p0, p0, Lpby;->d:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-double/2addr v1, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(F)F
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    int-to-float p0, p0

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
    mul-float/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lpby;->e:I

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
    int-to-float p0, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return p1

    nop

    :goto_5
    iget v0, p0, Lpby;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    div-float/2addr p1, p0

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
.end method

.method public final c()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iget p0, p0, Lpby;->d:I

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
    return p0

    nop

    :goto_3
    iget v0, p0, Lpby;->e:I

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

    :goto_4
    div-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v1, p0, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    return-object p1

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1c

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
    mul-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v1, v0, Lpby;->e:I

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, p1, Landroid/graphics/Rect;->top:I

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

    nop

    :goto_c
    iget p0, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    iget p0, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, p0, Lpby;->d:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0, v1, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    add-int/2addr v2, p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    :goto_14
    iget v1, p0, Lpby;->d:I

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    mul-int/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    invoke-static {v0, v1}, Lpby;->k(II)Lpby;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    add-int/2addr v2, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-object p1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lpby;->d:I

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

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    iget v0, v0, Lpby;->d:I

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

    :goto_21
    iget v1, p0, Lpby;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

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

    :goto_26
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_27
    iget v2, p0, Lpby;->e:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    div-int/2addr v0, p0

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

    :goto_2b
    div-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    iget v2, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_2e
    add-int/2addr p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2f
    if-gt v3, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_30
    mul-int/2addr v3, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/2addr p0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_33
    sub-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_34
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_35
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_37
    iget p0, p0, Lpby;->e:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpck;)Landroid/graphics/Rect;
    .locals 3

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget v1, p1, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_2

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
    invoke-virtual {p0, v0}, Lpby;->d(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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
    iget p1, p1, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

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

    :goto_b
    goto/32 :goto_f

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_1

    nop

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

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    const v0, 0xf

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

    :goto_2
    iget v1, p0, Lpby;->e:I

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
    iget v3, p1, Lpby;->e:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lpby;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

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
    return v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    if-eq p0, p1, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    return v2

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-eq p0, p1, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lpby;->d:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    instance-of v1, p1, Lpby;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    if-eq v1, v3, :cond_4

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget p1, p1, Lpby;->d:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final f()Lpby;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget v1, p0, Lpby;->e:I

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lpby;->l()Lpby;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Lpby;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    if-ge v0, v1, :cond_1

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
    goto/32 :goto_3

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final h()Lpby;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    if-le v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lpby;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lpby;->l()Lpby;

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

    :goto_5
    goto/32 :goto_8

    nop

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

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    return-object p0

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    iget v1, p0, Lpby;->e:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    nop

    nop

    :goto_1
    iget v0, p0, Lpby;->d:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_5
    return p0

    nop

    :goto_6
    iget p0, p0, Lpby;->e:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final l()Lpby;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Lpby;->k(II)Lpby;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lpby;->e:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lpby;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final m(Lpby;)Z
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    sub-float/2addr p0, p1

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

    :goto_1
    invoke-virtual {p0}, Lpby;->c()F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    cmpg-double p0, p0, v0

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    float-to-double p0, p0

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

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide v0, 0x3f9999999999999aL    # 0.025

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
    invoke-virtual {p1}, Lpby;->c()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    const/4 p0, 0x0

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

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_15
    if-ltz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpby;->e:I

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

    :goto_2
    const-string v1, "AspectRatio[%d:%d]"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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
    return-object p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x13

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lpby;->d:I

    nop

    goto/32 :goto_7

    nop

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

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
