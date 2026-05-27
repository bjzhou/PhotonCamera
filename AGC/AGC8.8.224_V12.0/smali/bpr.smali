.class public final Lbpr;
.super Ljava/lang/Object;

# interfaces
.implements Lbpn;


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:[B

.field public c:[B

.field public d:[I

.field public e:I

.field public f:Lbpp;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/Boolean;

.field public i:Landroid/graphics/Bitmap$Config;

.field public final j:Ldne;

.field private k:[I

.field private final l:[I

.field private m:[S

.field private n:[B

.field private o:[B

.field private p:Z

.field private q:I

.field private r:I

.field private s:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lbpr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ldne;Lbpp;Ljava/nio/ByteBuffer;I[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p5, 0x100

    new-array p5, p5, [I

    iput-object p5, p0, Lbpr;->l:[I

    sget-object p5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p5, p0, Lbpr;->i:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lbpr;->j:Ldne;

    new-instance p1, Lbpp;

    invoke-direct {p1}, Lbpp;-><init>()V

    iput-object p1, p0, Lbpr;->f:Lbpp;

    invoke-virtual {p0, p2, p3, p4}, Lbpr;->c(Lbpp;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private final d()I
    .locals 1

    iget-object v0, p0, Lbpr;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private final e()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lbpr;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbpr;->i:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget-object v1, p0, Lbpr;->j:Ldne;

    iget v2, p0, Lbpr;->t:I

    iget v3, p0, Lbpr;->s:I

    iget-object v1, v1, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v0}, Lbsw;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 36

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lbpr;->f:Lbpp;

    iget v0, v0, Lbpp;->c:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, v1, Lbpr;->e:I

    if-gez v0, :cond_1

    :cond_0
    iput v2, v1, Lbpr;->q:I

    :cond_1
    iget v0, v1, Lbpr;->q:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_48

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto/16 :goto_26

    :cond_2
    const/4 v0, 0x0

    iput v0, v1, Lbpr;->q:I

    iget-object v5, v1, Lbpr;->b:[B

    const/16 v6, 0xff

    if-nez v5, :cond_3

    iget-object v5, v1, Lbpr;->j:Ldne;

    invoke-virtual {v5, v6}, Ldne;->y(I)[B

    move-result-object v5

    iput-object v5, v1, Lbpr;->b:[B

    :cond_3
    iget-object v5, v1, Lbpr;->f:Lbpp;

    iget-object v5, v5, Lbpp;->e:Ljava/util/List;

    iget v7, v1, Lbpr;->e:I

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbpo;

    iget v7, v1, Lbpr;->e:I

    const/4 v8, -0x1

    add-int/2addr v7, v8

    if-ltz v7, :cond_4

    iget-object v9, v1, Lbpr;->f:Lbpp;

    iget-object v9, v9, Lbpp;->e:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbpo;

    goto :goto_0

    :cond_4
    move-object v7, v3

    :goto_0
    iget-object v9, v5, Lbpo;->k:[I

    if-nez v9, :cond_5

    iget-object v9, v1, Lbpr;->f:Lbpp;

    iget-object v9, v9, Lbpp;->a:[I

    :cond_5
    iput-object v9, v1, Lbpr;->k:[I

    if-nez v9, :cond_6

    iput v2, v1, Lbpr;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_6
    :try_start_1
    iget-boolean v10, v5, Lbpo;->f:Z

    if-eqz v10, :cond_7

    iget-object v10, v1, Lbpr;->l:[I

    const/16 v11, 0x100

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lbpr;->l:[I

    iput-object v9, v1, Lbpr;->k:[I

    iget v10, v5, Lbpo;->h:I

    aput v0, v9, v10

    iget v9, v5, Lbpo;->g:I

    if-ne v9, v4, :cond_7

    iget v9, v1, Lbpr;->e:I

    if-nez v9, :cond_7

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v1, Lbpr;->h:Ljava/lang/Boolean;

    :cond_7
    iget-object v9, v1, Lbpr;->d:[I

    if-nez v7, :cond_9

    iget-object v10, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_8

    iget-object v11, v1, Lbpr;->j:Ldne;

    invoke-virtual {v11, v10}, Ldne;->w(Landroid/graphics/Bitmap;)V

    :cond_8
    iput-object v3, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_9
    const/4 v3, 0x3

    if-eqz v7, :cond_a

    iget v10, v7, Lbpo;->g:I

    if-ne v10, v3, :cond_a

    iget-object v10, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    if-nez v10, :cond_a

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_a
    if-eqz v7, :cond_f

    iget v10, v7, Lbpo;->g:I

    if-lez v10, :cond_f

    if-ne v10, v4, :cond_e

    iget-boolean v10, v5, Lbpo;->f:Z

    if-nez v10, :cond_c

    iget-object v10, v1, Lbpr;->f:Lbpp;

    iget v11, v10, Lbpp;->l:I

    iget-object v12, v5, Lbpo;->k:[I

    if-eqz v12, :cond_b

    iget v10, v10, Lbpp;->j:I

    iget v12, v5, Lbpo;->h:I

    if-ne v10, v12, :cond_b

    const/4 v11, 0x0

    goto :goto_1

    :cond_b
    goto :goto_1

    :cond_c
    const/4 v11, 0x0

    :goto_1
    iget v10, v7, Lbpo;->d:I

    iget v12, v1, Lbpr;->r:I

    div-int/2addr v10, v12

    iget v13, v7, Lbpo;->b:I

    div-int/2addr v13, v12

    iget v14, v7, Lbpo;->c:I

    div-int/2addr v14, v12

    iget v7, v7, Lbpo;->a:I

    div-int/2addr v7, v12

    iget v12, v1, Lbpr;->t:I

    mul-int v13, v13, v12

    add-int/2addr v13, v7

    mul-int v10, v10, v12

    move v7, v13

    :goto_2
    add-int v12, v13, v10

    if-ge v7, v12, :cond_f

    add-int v12, v7, v14

    move v15, v7

    :goto_3
    if-ge v15, v12, :cond_d

    aput v11, v9, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_d
    iget v12, v1, Lbpr;->t:I

    add-int/2addr v7, v12

    goto :goto_2

    :cond_e
    if-ne v10, v3, :cond_f

    iget-object v10, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_f

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v7, v1, Lbpr;->t:I

    iget v13, v1, Lbpr;->s:I

    move-object v11, v9

    move/from16 v17, v13

    move v13, v7

    move/from16 v16, v7

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_f
    if-eqz v5, :cond_10

    iget-object v7, v1, Lbpr;->a:Ljava/nio/ByteBuffer;

    iget v10, v5, Lbpo;->j:I

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_10
    if-nez v5, :cond_11

    iget-object v7, v1, Lbpr;->f:Lbpp;

    iget v10, v7, Lbpp;->f:I

    iget v7, v7, Lbpp;->g:I

    mul-int v10, v10, v7

    goto :goto_4

    :cond_11
    iget v7, v5, Lbpo;->c:I

    iget v10, v5, Lbpo;->d:I

    mul-int v10, v10, v7

    :goto_4
    iget-object v7, v1, Lbpr;->c:[B

    if-eqz v7, :cond_12

    array-length v7, v7

    if-ge v7, v10, :cond_13

    :cond_12
    iget-object v7, v1, Lbpr;->j:Ldne;

    invoke-virtual {v7, v10}, Ldne;->y(I)[B

    move-result-object v7

    iput-object v7, v1, Lbpr;->c:[B

    :cond_13
    iget-object v7, v1, Lbpr;->c:[B

    iget-object v11, v1, Lbpr;->m:[S

    const/16 v12, 0x1000

    if-nez v11, :cond_14

    new-array v11, v12, [S

    iput-object v11, v1, Lbpr;->m:[S

    :cond_14
    iget-object v11, v1, Lbpr;->m:[S

    iget-object v13, v1, Lbpr;->n:[B

    if-nez v13, :cond_15

    new-array v13, v12, [B

    iput-object v13, v1, Lbpr;->n:[B

    :cond_15
    iget-object v13, v1, Lbpr;->n:[B

    iget-object v14, v1, Lbpr;->o:[B

    if-nez v14, :cond_16

    const/16 v14, 0x1001

    new-array v14, v14, [B

    iput-object v14, v1, Lbpr;->o:[B

    :cond_16
    iget-object v14, v1, Lbpr;->o:[B

    invoke-direct/range {p0 .. p0}, Lbpr;->d()I

    move-result v15

    shl-int v4, v2, v15

    add-int/2addr v15, v2

    shl-int v17, v2, v15

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_17

    aput-short v0, v11, v2

    int-to-byte v12, v2

    aput-byte v12, v13, v2

    add-int/lit8 v2, v2, 0x1

    const/16 v12, 0x1000

    goto :goto_5

    :cond_17
    add-int/lit8 v17, v17, -0x1

    add-int/lit8 v2, v4, 0x2

    iget-object v12, v1, Lbpr;->b:[B

    move/from16 v26, v2

    move/from16 v28, v15

    move/from16 v27, v17

    const/4 v8, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_6
    const/16 v31, 0x8

    if-ge v8, v10, :cond_25

    if-nez v21, :cond_1a

    invoke-direct/range {p0 .. p0}, Lbpr;->d()I

    move-result v6

    if-gtz v6, :cond_18

    move/from16 v33, v2

    const/16 v21, 0x0

    goto :goto_7

    :cond_18
    iget-object v3, v1, Lbpr;->a:Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lbpr;->b:[B

    move/from16 v33, v2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v21, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_7
    if-gtz v21, :cond_19

    const/4 v0, 0x3

    iput v0, v1, Lbpr;->q:I

    goto/16 :goto_d

    :cond_19
    const/4 v0, 0x3

    const/16 v24, 0x0

    goto :goto_8

    :cond_1a
    move/from16 v33, v2

    const/4 v0, 0x3

    :goto_8
    aget-byte v2, v12, v24

    const/16 v3, 0xff

    and-int/2addr v2, v3

    shl-int v2, v2, v22

    add-int v23, v23, v2

    add-int/lit8 v24, v24, 0x1

    const/4 v2, -0x1

    add-int/lit8 v21, v21, -0x1

    add-int/lit8 v22, v22, 0x8

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v6, v26

    move/from16 v0, v28

    move-object/from16 v20, v12

    move/from16 v12, v29

    :goto_9
    if-lt v3, v0, :cond_24

    move/from16 v22, v15

    and-int v15, v23, v27

    shr-int v23, v23, v0

    sub-int/2addr v3, v0

    if-ne v15, v4, :cond_1b

    move/from16 v27, v17

    move/from16 v0, v22

    move v15, v0

    move/from16 v6, v33

    const/4 v2, -0x1

    goto :goto_9

    :cond_1b
    move/from16 v26, v3

    add-int/lit8 v3, v4, 0x1

    if-ne v15, v3, :cond_1c

    move/from16 v28, v0

    move/from16 v29, v12

    move-object/from16 v12, v20

    move/from16 v15, v22

    move/from16 v22, v26

    const/4 v0, 0x0

    const/4 v3, 0x3

    move/from16 v20, v2

    move/from16 v26, v6

    move/from16 v2, v33

    const/16 v6, 0xff

    goto :goto_6

    :cond_1c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    aget-byte v2, v13, v15

    aput-byte v2, v7, v25

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v25, v25, 0x1

    move v2, v15

    move v12, v2

    move/from16 v15, v22

    move/from16 v3, v26

    goto :goto_9

    :cond_1d
    if-lt v15, v6, :cond_1e

    int-to-byte v3, v12

    aput-byte v3, v14, v30

    add-int/lit8 v30, v30, 0x1

    move v3, v2

    goto :goto_a

    :cond_1e
    move v3, v15

    :goto_a
    if-lt v3, v4, :cond_1f

    aget-byte v12, v13, v3

    aput-byte v12, v14, v30

    aget-short v3, v11, v3

    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    :cond_1f
    aget-byte v3, v13, v3

    const/16 v12, 0xff

    and-int/2addr v3, v12

    int-to-byte v12, v3

    aput-byte v12, v7, v25

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v25, v25, 0x1

    :goto_b
    if-lez v30, :cond_20

    add-int/lit8 v30, v30, -0x1

    aget-byte v28, v14, v30

    aput-byte v28, v7, v25

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    :cond_20
    move/from16 v28, v3

    const/16 v3, 0x1000

    if-ge v6, v3, :cond_22

    int-to-short v2, v2

    aput-short v2, v11, v6

    aput-byte v12, v13, v6

    add-int/lit8 v6, v6, 0x1

    and-int v2, v6, v27

    if-nez v2, :cond_21

    const/16 v2, 0x1000

    if-ge v6, v2, :cond_23

    add-int v27, v27, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_21
    const/16 v2, 0x1000

    goto :goto_c

    :cond_22
    const/16 v2, 0x1000

    :cond_23
    :goto_c
    move v2, v15

    move/from16 v15, v22

    move/from16 v3, v26

    move/from16 v12, v28

    goto/16 :goto_9

    :cond_24
    move/from16 v22, v15

    const/16 v15, 0x1000

    move/from16 v28, v0

    move/from16 v26, v6

    move/from16 v29, v12

    move-object/from16 v12, v20

    move/from16 v15, v22

    const/4 v0, 0x0

    const/16 v6, 0xff

    move/from16 v20, v2

    move/from16 v22, v3

    move/from16 v2, v33

    const/4 v3, 0x3

    goto/16 :goto_6

    :cond_25
    :goto_d
    move/from16 v0, v25

    const/4 v6, 0x0

    invoke-static {v7, v0, v10, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-boolean v0, v5, Lbpo;->e:Z

    if-nez v0, :cond_2f

    iget v0, v1, Lbpr;->r:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    goto/16 :goto_15

    :cond_26
    iget-object v0, v1, Lbpr;->d:[I

    iget v2, v5, Lbpo;->d:I

    iget v3, v5, Lbpo;->b:I

    iget v4, v5, Lbpo;->c:I

    iget v7, v5, Lbpo;->a:I

    iget v8, v1, Lbpr;->e:I

    iget v10, v1, Lbpr;->t:I

    iget-object v11, v1, Lbpr;->c:[B

    iget-object v12, v1, Lbpr;->k:[I

    const/4 v13, -0x1

    const/4 v14, 0x0

    :goto_e
    if-ge v14, v2, :cond_2b

    add-int v15, v14, v3

    mul-int v15, v15, v10

    add-int v16, v15, v7

    add-int v6, v16, v4

    add-int/2addr v15, v10

    move/from16 v17, v2

    iget v2, v5, Lbpo;->c:I

    mul-int v2, v2, v14

    move/from16 v35, v16

    move/from16 v16, v3

    move/from16 v3, v35

    :goto_f
    if-ge v15, v6, :cond_27

    move/from16 v18, v4

    move v4, v15

    goto :goto_10

    :cond_27
    move/from16 v18, v4

    move v4, v6

    :goto_10
    if-ge v3, v4, :cond_2a

    aget-byte v4, v11, v2

    move/from16 v20, v6

    and-int/lit16 v6, v4, 0xff

    if-eq v6, v13, :cond_29

    aget v6, v12, v6

    if-eqz v6, :cond_28

    aput v6, v0, v3

    goto :goto_11

    :cond_28
    move v13, v4

    :cond_29
    :goto_11
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move/from16 v4, v18

    move/from16 v6, v20

    goto :goto_f

    :cond_2a
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move/from16 v2, v17

    move/from16 v4, v18

    const/4 v6, 0x0

    goto :goto_e

    :cond_2b
    iget-object v0, v1, Lbpr;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_13

    :cond_2c
    :goto_12
    const/4 v0, 0x1

    goto :goto_14

    :cond_2d
    :goto_13
    iget-object v0, v1, Lbpr;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_2e

    if-nez v8, :cond_2e

    const/4 v0, -0x1

    if-eq v13, v0, :cond_2e

    goto :goto_12

    :cond_2e
    const/4 v0, 0x0

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lbpr;->h:Ljava/lang/Boolean;

    move-object/from16 v18, v9

    goto/16 :goto_25

    :cond_2f
    :goto_15
    iget-object v0, v1, Lbpr;->d:[I

    iget v2, v5, Lbpo;->d:I

    iget v3, v1, Lbpr;->r:I

    div-int/2addr v2, v3

    iget v4, v5, Lbpo;->b:I

    div-int/2addr v4, v3

    iget v6, v5, Lbpo;->c:I

    div-int/2addr v6, v3

    iget v7, v5, Lbpo;->a:I

    div-int/2addr v7, v3

    iget v8, v1, Lbpr;->e:I

    iget v10, v1, Lbpr;->t:I

    iget v11, v1, Lbpr;->s:I

    iget-object v12, v1, Lbpr;->c:[B

    iget-object v13, v1, Lbpr;->k:[I

    iget-object v14, v1, Lbpr;->h:Ljava/lang/Boolean;

    move-object/from16 v18, v9

    move-object v15, v14

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x8

    :goto_16
    if-ge v14, v2, :cond_42

    move-object/from16 v20, v15

    iget-boolean v15, v5, Lbpo;->e:Z

    if-eqz v15, :cond_31

    if-lt v9, v2, :cond_30

    add-int/lit8 v17, v17, 0x1

    const/4 v15, 0x4

    packed-switch v17, :pswitch_data_0

    goto :goto_17

    :pswitch_0
    const/4 v9, 0x1

    const/16 v19, 0x2

    goto :goto_17

    :pswitch_1
    const/4 v9, 0x2

    const/16 v19, 0x4

    goto :goto_17

    :pswitch_2
    const/4 v9, 0x4

    :cond_30
    :goto_17
    add-int v15, v9, v19

    goto :goto_18

    :cond_31
    move v15, v9

    move v9, v14

    :goto_18
    add-int/2addr v9, v4

    if-ge v9, v11, :cond_41

    mul-int v9, v9, v10

    add-int v21, v9, v7

    move/from16 v22, v2

    add-int v2, v21, v6

    add-int/2addr v9, v10

    mul-int v23, v14, v3

    move/from16 v24, v4

    iget v4, v5, Lbpo;->c:I

    mul-int v23, v23, v4

    if-ge v9, v2, :cond_32

    move v2, v9

    :cond_32
    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    move/from16 v4, v21

    :goto_19
    if-ge v4, v2, :cond_35

    aget-byte v9, v12, v23

    move/from16 v25, v6

    const/16 v6, 0xff

    and-int/2addr v9, v6

    aget v6, v13, v9

    if-eqz v6, :cond_33

    aput v6, v0, v4

    goto :goto_1a

    :cond_33
    if-nez v8, :cond_34

    if-nez v20, :cond_34

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v20, v9

    :cond_34
    :goto_1a
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v6, v25

    goto :goto_19

    :cond_35
    move/from16 v25, v6

    move/from16 v32, v7

    move/from16 v33, v10

    move/from16 v34, v11

    const/16 v10, 0xff

    goto/16 :goto_23

    :cond_36
    move/from16 v25, v6

    sub-int v4, v2, v21

    mul-int v4, v4, v3

    add-int v4, v23, v4

    move/from16 v6, v21

    :goto_1b
    if-ge v6, v2, :cond_40

    iget v9, v5, Lbpo;->c:I

    move/from16 v30, v2

    move/from16 v2, v23

    const/16 v21, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    :goto_1c
    move/from16 v32, v7

    iget v7, v1, Lbpr;->r:I

    add-int v7, v23, v7

    if-ge v2, v7, :cond_39

    iget-object v7, v1, Lbpr;->c:[B

    move/from16 v33, v10

    array-length v10, v7

    if-ge v2, v10, :cond_38

    if-ge v2, v4, :cond_38

    aget-byte v7, v7, v2

    const/16 v10, 0xff

    and-int/2addr v7, v10

    iget-object v10, v1, Lbpr;->k:[I

    aget v7, v10, v7

    if-eqz v7, :cond_37

    shr-int/lit8 v10, v7, 0x18

    move/from16 v34, v11

    const/16 v11, 0xff

    and-int/2addr v10, v11

    add-int v21, v21, v10

    shr-int/lit8 v10, v7, 0x10

    and-int/2addr v10, v11

    add-int v26, v26, v10

    shr-int/lit8 v10, v7, 0x8

    and-int/2addr v10, v11

    add-int v27, v27, v10

    and-int/lit16 v7, v7, 0xff

    add-int v28, v28, v7

    add-int/lit8 v29, v29, 0x1

    goto :goto_1d

    :cond_37
    move/from16 v34, v11

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v32

    move/from16 v10, v33

    move/from16 v11, v34

    goto :goto_1c

    :cond_38
    move/from16 v34, v11

    goto :goto_1e

    :cond_39
    move/from16 v33, v10

    move/from16 v34, v11

    :goto_1e
    add-int v9, v23, v9

    move v2, v9

    :goto_1f
    iget v7, v1, Lbpr;->r:I

    add-int/2addr v7, v9

    if-ge v2, v7, :cond_3c

    iget-object v7, v1, Lbpr;->c:[B

    array-length v10, v7

    if-ge v2, v10, :cond_3b

    if-ge v2, v4, :cond_3b

    aget-byte v7, v7, v2

    const/16 v10, 0xff

    and-int/2addr v7, v10

    iget-object v11, v1, Lbpr;->k:[I

    aget v7, v11, v7

    if-eqz v7, :cond_3a

    shr-int/lit8 v11, v7, 0x18

    and-int/2addr v11, v10

    add-int v21, v21, v11

    shr-int/lit8 v11, v7, 0x10

    and-int/2addr v11, v10

    add-int v26, v26, v11

    shr-int/lit8 v11, v7, 0x8

    and-int/2addr v11, v10

    add-int v27, v27, v11

    and-int/lit16 v7, v7, 0xff

    add-int v28, v28, v7

    add-int/lit8 v29, v29, 0x1

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_3b
    const/16 v10, 0xff

    goto :goto_20

    :cond_3c
    const/16 v10, 0xff

    :goto_20
    if-nez v29, :cond_3d

    const/4 v2, 0x0

    goto :goto_21

    :cond_3d
    div-int v21, v21, v29

    shl-int/lit8 v2, v21, 0x18

    div-int v26, v26, v29

    shl-int/lit8 v7, v26, 0x10

    div-int v27, v27, v29

    shl-int/lit8 v9, v27, 0x8

    div-int v28, v28, v29

    or-int/2addr v2, v7

    or-int/2addr v2, v9

    or-int v2, v2, v28

    :goto_21
    if-eqz v2, :cond_3e

    aput v2, v0, v6

    goto :goto_22

    :cond_3e
    if-nez v8, :cond_3f

    if-nez v20, :cond_3f

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v20, v7

    :cond_3f
    :goto_22
    add-int v23, v23, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v30

    move/from16 v7, v32

    move/from16 v10, v33

    move/from16 v11, v34

    goto/16 :goto_1b

    :cond_40
    move/from16 v32, v7

    move/from16 v33, v10

    move/from16 v34, v11

    const/16 v10, 0xff

    goto :goto_23

    :cond_41
    move/from16 v22, v2

    move/from16 v24, v4

    move/from16 v25, v6

    move/from16 v32, v7

    move/from16 v33, v10

    move/from16 v34, v11

    const/16 v10, 0xff

    :goto_23
    add-int/lit8 v14, v14, 0x1

    move v9, v15

    move-object/from16 v15, v20

    move/from16 v2, v22

    move/from16 v4, v24

    move/from16 v6, v25

    move/from16 v7, v32

    move/from16 v10, v33

    move/from16 v11, v34

    goto/16 :goto_16

    :cond_42
    move-object/from16 v20, v15

    iget-object v0, v1, Lbpr;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_44

    if-nez v20, :cond_43

    const/4 v0, 0x0

    goto :goto_24

    :cond_43
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lbpr;->h:Ljava/lang/Boolean;

    :cond_44
    :goto_25
    iget-boolean v0, v1, Lbpr;->p:Z

    if-eqz v0, :cond_47

    iget v0, v5, Lbpo;->g:I

    if-eqz v0, :cond_45

    const/4 v2, 0x1

    if-ne v0, v2, :cond_47

    :cond_45
    iget-object v0, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    if-nez v0, :cond_46

    invoke-direct/range {p0 .. p0}, Lbpr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    :cond_46
    iget-object v10, v1, Lbpr;->g:Landroid/graphics/Bitmap;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v0, v1, Lbpr;->t:I

    iget v2, v1, Lbpr;->s:I

    move-object/from16 v11, v18

    move v13, v0

    move/from16 v16, v0

    move/from16 v17, v2

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_47
    invoke-direct/range {p0 .. p0}, Lbpr;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v2, v1, Lbpr;->t:I

    iget v3, v1, Lbpr;->s:I

    move-object v10, v0

    move-object/from16 v11, v18

    move v13, v2

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_48
    :goto_26
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget v0, p0, Lbpr;->e:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lbpr;->f:Lbpp;

    iget v1, v1, Lbpp;->c:I

    rem-int/2addr v0, v1

    iput v0, p0, Lbpr;->e:I

    return-void
.end method

.method public final declared-synchronized c(Lbpp;Ljava/nio/ByteBuffer;I)V
    .locals 2

    monitor-enter p0

    if-lez p3, :cond_2

    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lbpr;->q:I

    iput-object p1, p0, Lbpr;->f:Lbpp;

    const/4 v1, -0x1

    iput v1, p0, Lbpr;->e:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lbpr;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lbpr;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lbpr;->p:Z

    iget-object p2, p1, Lbpp;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbpo;

    iget v0, v0, Lbpo;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lbpr;->p:Z

    :cond_1
    iput p3, p0, Lbpr;->r:I

    iget p2, p1, Lbpp;->f:I

    div-int v0, p2, p3

    iput v0, p0, Lbpr;->t:I

    iget p1, p1, Lbpp;->g:I

    div-int p3, p1, p3

    iput p3, p0, Lbpr;->s:I

    iget-object p3, p0, Lbpr;->j:Ldne;

    mul-int p2, p2, p1

    invoke-virtual {p3, p2}, Ldne;->y(I)[B

    move-result-object p1

    iput-object p1, p0, Lbpr;->c:[B

    iget-object p1, p0, Lbpr;->j:Ldne;

    iget p2, p0, Lbpr;->t:I

    iget p3, p0, Lbpr;->s:I

    mul-int p2, p2, p3

    iget-object p1, p1, Ldne;->a:Ljava/lang/Object;

    const-class p3, [I

    invoke-interface {p1, p2, p3}, Lbsu;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lbpr;->d:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sample size must be >=0, not: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
