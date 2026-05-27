.class public final Ldzr;
.super Ljava/lang/Object;


# instance fields
.field public final a:Llbd;

.field public final b:I

.field public final c:[F

.field public final d:[F

.field private final e:[S


# direct methods
.method public constructor <init>(Llbd;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iput-object p1, p0, Ldzr;->a:Llbd;

    iput p2, p0, Ldzr;->b:I

    mul-int/lit8 p1, p2, 0x6

    new-array p1, p1, [S

    const/4 v2, 0x0

    :goto_1
    add-int v3, p2, p2

    if-ge v2, v3, :cond_2

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v2, 0x3

    add-int v5, v2, v3

    add-int/2addr v4, v3

    int-to-short v5, v5

    aput-short v5, p1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-object p1, p0, Ldzr;->e:[S

    add-int/2addr p2, v1

    const/high16 p1, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x4

    invoke-static {p1, v0, p1, p2, v1}, Ldzr;->c(FFFII)[F

    move-result-object p1

    iput-object p1, p0, Ldzr;->d:[F

    const/4 p1, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p1, v0, p2, v1}, Ldzr;->c(FFFII)[F

    move-result-object p1

    iput-object p1, p0, Ldzr;->c:[F

    return-void
.end method

.method private static c(FFFII)[F
    .locals 11

    add-int v0, p3, p3

    mul-int v0, v0, p4

    new-array v0, v0, [F

    const/4 v1, 0x0

    move v4, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p3, :cond_3

    move v6, p0

    const/4 v5, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v5, v7, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, p0

    aput v6, v0, v3

    add-int/lit8 v10, v3, 0x1

    aput v4, v0, v10

    add-float/2addr v6, v9

    if-le p4, v7, :cond_1

    :goto_2
    add-int/lit8 v9, p4, -0x1

    if-ge v7, v9, :cond_0

    add-int/lit8 v7, v3, 0x2

    const/4 v9, 0x0

    aput v9, v0, v7

    const/4 v7, 0x3

    goto :goto_2

    :cond_0
    add-int v7, v3, p4

    add-int/lit8 v7, v7, -0x1

    aput v8, v0, v7

    :cond_1
    add-int/2addr v3, p4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, p3, -0x1

    sub-float v6, p2, p1

    int-to-float v5, v5

    div-float/2addr v6, v5

    add-float/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Llck;
    .locals 5

    iget-object v0, p0, Ldzr;->a:Llbd;

    iget-object v1, p0, Ldzr;->e:[S

    array-length v2, v1

    add-int v3, v2, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    new-instance v1, Llck;

    const v4, 0x8893

    invoke-static {v0, v4, v3}, Llax;->b(Llbd;ILjava/nio/ByteBuffer;)Llax;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Llck;-><init>(Llax;I)V

    return-object v1
.end method

.method public final b(Ljava/util/List;)Lldh;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v0, Ldzr;->b:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, v0, Ldzr;->d:[F

    array-length v3, v2

    new-array v3, v3, [F

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x2

    if-gt v7, v6, :cond_3

    if-lez v7, :cond_1

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llau;

    goto :goto_2

    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Llau;

    :goto_2
    mul-int/lit8 v10, v7, 0x8

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_2

    mul-int/lit8 v12, v11, 0x4

    add-int/2addr v12, v10

    aget v13, v2, v12

    iget-object v14, v9, Llau;->c:[F

    aget v15, v14, v5

    mul-float v13, v13, v15

    add-int/lit8 v15, v12, 0x1

    aget v16, v2, v15

    aget v17, v14, v4

    mul-float v16, v16, v17

    add-int/lit8 v17, v12, 0x3

    aget v18, v2, v17

    aget v19, v14, v8

    mul-float v18, v18, v19

    add-float v13, v13, v16

    add-float v13, v13, v18

    aput v13, v3, v12

    aget v13, v2, v12

    const/16 v16, 0x3

    aget v16, v14, v16

    mul-float v13, v13, v16

    aget v16, v2, v15

    const/16 v18, 0x4

    aget v18, v14, v18

    mul-float v16, v16, v18

    aget v18, v2, v17

    const/16 v19, 0x5

    aget v19, v14, v19

    mul-float v18, v18, v19

    add-float v13, v13, v16

    add-float v13, v13, v18

    aput v13, v3, v15

    add-int/lit8 v13, v12, 0x2

    const/16 v16, 0x0

    aput v16, v3, v13

    aget v12, v2, v12

    const/4 v13, 0x6

    aget v13, v14, v13

    mul-float v12, v12, v13

    aget v13, v2, v15

    const/4 v15, 0x7

    aget v15, v14, v15

    mul-float v13, v13, v15

    aget v15, v2, v17

    const/16 v16, 0x8

    aget v14, v14, v16

    mul-float v15, v15, v14

    add-float/2addr v12, v13

    add-float/2addr v12, v15

    aput v12, v3, v17

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Ldzr;->a:Llbd;

    new-array v2, v8, [Lldi;

    invoke-static {v3}, Lldi;->b([F)Lldi;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, v0, Ldzr;->c:[F

    invoke-static {v3}, Lldi;->a([F)Lldi;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lldh;->e(Llbd;[Lldi;)Lldh;

    move-result-object v1

    return-object v1
.end method
