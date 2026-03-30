.class public final Lfjb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfix;


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public b:[B

.field public c:[B

.field public d:[I

.field public e:I

.field public f:Lfiz;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/Boolean;

.field public i:Landroid/graphics/Bitmap$Config;

.field public final j:Liof;

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
.method private final 23ce148e54b083367f51e25c7971761em()Landroid/graphics/Bitmap;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0x1c

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

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

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
    const v0, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lfjb;->j:Liof;

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

    :goto_10
    invoke-interface {v1, v2, p0, v0}, Lfmf;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    iget v2, p0, Lfjb;->t:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

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

    :goto_15
    iget p0, p0, Lfjb;->s:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_16
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lfjb;->i:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public constructor <init>(Liof;Lfiz;Ljava/nio/ByteBuffer;I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfjb;->f:Lfiz;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2, p3, p4}, Lfjb;->c(Lfiz;Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance p1, Lfiz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [I

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

    :goto_6
    iput-object v0, p0, Lfjb;->i:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-direct {p1}, Lfiz;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/16 v0, 0x100

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
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    :goto_a
    iput-object v0, p0, Lfjb;->l:[I

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

    :goto_b
    iput-object p1, p0, Lfjb;->j:Liof;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfjb;->a:Ljava/nio/ByteBuffer;

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
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/graphics/Bitmap;
    .locals 35

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v3

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

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

    :goto_7
    move-object/from16 v1, p0

    nop

    goto/32 :goto_35

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    return-object v3

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    iget-boolean v10, v5, Lfiy;->f:Z

    nop

    if-eqz v10, :cond_2

    nop

    nop

    iget-object v10, v1, Lfjb;->l:[I

    nop

    nop

    const/16 v11, 0x100

    nop

    nop

    nop

    nop

    invoke-static {v9, v0, v10, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lfjb;->l:[I

    nop

    nop

    nop

    iput-object v9, v1, Lfjb;->k:[I

    nop

    nop

    iget v10, v5, Lfiy;->h:I

    nop

    nop

    nop

    aput v0, v9, v10

    nop

    nop

    nop

    nop

    iget v9, v5, Lfiy;->g:I

    nop

    nop

    nop

    if-ne v9, v4, :cond_2

    nop

    iget v9, v1, Lfjb;->e:I

    nop

    nop

    if-nez v9, :cond_2

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    nop

    nop

    nop

    iput-object v9, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v9, v1, Lfjb;->d:[I

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_4

    nop

    nop

    iget-object v10, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    if-eqz v10, :cond_3

    nop

    nop

    iget-object v11, v1, Lfjb;->j:Liof;

    nop

    invoke-virtual {v11, v10}, Liof;->N(Landroid/graphics/Bitmap;)V

    :cond_3
    iput-object v3, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_4
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_5

    nop

    nop

    iget v10, v7, Lfiy;->g:I

    nop

    nop

    if-ne v10, v3, :cond_5

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    if-nez v10, :cond_5

    nop

    nop

    invoke-static {v9, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_5
    if-eqz v7, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget v10, v7, Lfiy;->g:I

    nop

    if-lez v10, :cond_a

    nop

    if-ne v10, v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-boolean v10, v5, Lfiy;->f:Z

    nop

    nop

    nop

    if-nez v10, :cond_6

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    iget v11, v10, Lfiz;->l:I

    nop

    nop

    nop

    nop

    iget-object v12, v5, Lfiy;->k:[I

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_7

    nop

    nop

    iget v10, v10, Lfiz;->j:I

    nop

    nop

    iget v12, v5, Lfiy;->h:I

    nop

    if-ne v10, v12, :cond_7

    nop

    nop

    nop

    :cond_6
    move v11, v0

    nop

    nop

    :cond_7
    iget v10, v7, Lfiy;->d:I

    nop

    nop

    nop

    iget v12, v1, Lfjb;->r:I

    nop

    nop

    nop

    div-int/2addr v10, v12

    nop

    iget v13, v7, Lfiy;->b:I

    nop

    nop

    div-int/2addr v13, v12

    nop

    nop

    nop

    nop

    nop

    iget v14, v7, Lfiy;->c:I

    nop

    nop

    nop

    div-int/2addr v14, v12

    nop

    nop

    nop

    nop

    iget v7, v7, Lfiy;->a:I

    nop

    nop

    nop

    div-int/2addr v7, v12

    nop

    nop

    nop

    nop

    nop

    iget v12, v1, Lfjb;->t:I

    nop

    nop

    nop

    nop

    mul-int/2addr v13, v12

    nop

    nop

    nop

    add-int/2addr v13, v7

    nop

    nop

    mul-int/2addr v10, v12

    nop

    nop

    move v7, v13

    nop

    nop

    nop

    nop

    :goto_d
    add-int v12, v13, v10

    nop

    if-ge v7, v12, :cond_a

    nop

    nop

    nop

    nop

    nop

    add-int v12, v7, v14

    nop

    move v15, v7

    nop

    :goto_e
    if-ge v15, v12, :cond_8

    nop

    nop

    nop

    nop

    nop

    aput v11, v9, v15

    nop

    nop

    nop

    nop

    add-int/lit8 v15, v15, 0x1

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iget v12, v1, Lfjb;->t:I

    nop

    nop

    add-int/2addr v7, v12

    nop

    goto :goto_d

    nop

    :cond_9
    if-ne v10, v3, :cond_a

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    if-eqz v10, :cond_a

    nop

    nop

    nop

    iget v7, v1, Lfjb;->t:I

    nop

    nop

    iget v15, v1, Lfjb;->s:I

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    const/16 v16, 0x0

    nop

    move-object v11, v9

    nop

    nop

    nop

    nop

    move v13, v7

    nop

    nop

    nop

    move/from16 v17, v15

    nop

    nop

    nop

    nop

    nop

    move/from16 v15, v16

    nop

    move/from16 v16, v7

    nop

    nop

    nop

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_a
    if-eqz v5, :cond_b

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lfjb;->a:Ljava/nio/ByteBuffer;

    nop

    iget v10, v5, Lfiy;->j:I

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_b
    if-nez v5, :cond_c

    nop

    nop

    iget-object v7, v1, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    nop

    nop

    iget v10, v7, Lfiz;->f:I

    nop

    nop

    nop

    nop

    iget v7, v7, Lfiz;->g:I

    nop

    nop

    mul-int/2addr v10, v7

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_c
    iget v7, v5, Lfiy;->c:I

    nop

    iget v10, v5, Lfiy;->d:I

    nop

    nop

    mul-int/2addr v10, v7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v7, v1, Lfjb;->c:[B

    nop

    if-eqz v7, :cond_d

    nop

    nop

    array-length v7, v7

    nop

    nop

    if-ge v7, v10, :cond_e

    nop

    nop

    nop

    nop

    :cond_d
    iget-object v7, v1, Lfjb;->j:Liof;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Liof;->P(I)[B

    move-result-object v7

    nop

    nop

    nop

    nop

    iput-object v7, v1, Lfjb;->c:[B

    nop

    nop

    :cond_e
    iget-object v7, v1, Lfjb;->c:[B

    nop

    iget-object v11, v1, Lfjb;->m:[S

    nop

    nop

    const/16 v12, 0x1000

    nop

    if-nez v11, :cond_f

    nop

    nop

    new-array v11, v12, [S

    nop

    nop

    nop

    nop

    iput-object v11, v1, Lfjb;->m:[S

    nop

    :cond_f
    iget-object v11, v1, Lfjb;->m:[S

    nop

    nop

    nop

    nop

    iget-object v13, v1, Lfjb;->n:[B

    nop

    nop

    if-nez v13, :cond_10

    nop

    nop

    nop

    nop

    new-array v13, v12, [B

    nop

    nop

    nop

    nop

    iput-object v13, v1, Lfjb;->n:[B

    nop

    nop

    nop

    :cond_10
    iget-object v13, v1, Lfjb;->n:[B

    nop

    iget-object v14, v1, Lfjb;->o:[B

    nop

    nop

    nop

    nop

    nop

    if-nez v14, :cond_11

    nop

    nop

    nop

    nop

    const/16 v14, 0x1001

    nop

    nop

    nop

    new-array v14, v14, [B

    nop

    nop

    iput-object v14, v1, Lfjb;->o:[B

    nop

    nop

    nop

    nop

    :cond_11
    iget-object v14, v1, Lfjb;->o:[B

    nop

    nop

    nop

    nop

    invoke-direct/range {p0 .. p0}, Lfjb;->da190e616797844b591057d0190e7728m()I

    move-result v15

    nop

    nop

    nop

    nop

    shl-int v4, v2, v15

    nop

    nop

    nop

    add-int/lit8 v12, v4, 0x1

    nop

    nop

    nop

    nop

    add-int/lit8 v18, v4, 0x2

    nop

    add-int/2addr v15, v2

    nop

    shl-int v19, v2, v15

    nop

    nop

    nop

    add-int/lit8 v19, v19, -0x1

    nop

    move v2, v0

    nop

    :goto_10
    if-ge v2, v4, :cond_12

    nop

    aput-short v0, v11, v2

    nop

    nop

    nop

    int-to-byte v8, v2

    nop

    nop

    nop

    nop

    nop

    aput-byte v8, v13, v2

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_10

    nop

    nop

    :cond_12
    iget-object v2, v1, Lfjb;->b:[B

    nop

    nop

    nop

    nop

    nop

    move v6, v0

    nop

    nop

    nop

    move/from16 v21, v6

    nop

    move/from16 v22, v21

    nop

    nop

    nop

    move/from16 v23, v22

    nop

    move/from16 v24, v23

    nop

    nop

    nop

    move/from16 v25, v24

    nop

    move/from16 v29, v25

    nop

    nop

    nop

    nop

    move/from16 v30, v29

    nop

    nop

    move/from16 v28, v15

    nop

    nop

    nop

    move/from16 v26, v18

    nop

    nop

    nop

    nop

    nop

    move/from16 v27, v19

    nop

    nop

    nop

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v31, 0x8

    nop

    nop

    nop

    if-ge v6, v10, :cond_1e

    nop

    nop

    nop

    nop

    if-nez v21, :cond_15

    nop

    nop

    nop

    invoke-direct/range {p0 .. p0}, Lfjb;->da190e616797844b591057d0190e7728m()I

    move-result v3

    nop

    nop

    nop

    nop

    if-gtz v3, :cond_13

    nop

    nop

    move/from16 v21, v0

    nop

    nop

    nop

    move/from16 v32, v6

    nop

    nop

    nop

    nop

    nop

    move/from16 v33, v8

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_13
    iget-object v0, v1, Lfjb;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    move/from16 v32, v6

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lfjb;->b:[B

    nop

    nop

    nop

    nop

    nop

    move/from16 v33, v8

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    nop

    nop

    nop

    nop

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v21, v3

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v0, v6, v3, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_12
    if-gtz v21, :cond_14

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    iput v0, v1, Lfjb;->q:I

    nop

    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v25

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    goto/16 :goto_18

    nop

    nop

    :cond_14
    const/16 v24, 0x0

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_15
    move/from16 v32, v6

    nop

    nop

    nop

    nop

    move/from16 v33, v8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aget-byte v0, v2, v24

    nop

    nop

    nop

    nop

    const/16 v3, 0xff

    nop

    nop

    and-int/2addr v0, v3

    nop

    nop

    nop

    nop

    nop

    shl-int v0, v0, v22

    nop

    nop

    nop

    add-int v23, v23, v0

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v24, v24, 0x1

    nop

    nop

    nop

    nop

    nop

    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v21, v21, -0x1

    nop

    nop

    nop

    add-int/lit8 v22, v22, 0x8

    nop

    nop

    nop

    move/from16 v0, v22

    nop

    move/from16 v3, v26

    nop

    nop

    nop

    move/from16 v6, v32

    nop

    move/from16 v8, v33

    nop

    nop

    nop

    nop

    move-object/from16 v22, v2

    nop

    nop

    nop

    move/from16 v26, v15

    nop

    nop

    nop

    move/from16 v2, v28

    nop

    nop

    nop

    move/from16 v15, v29

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v0, v2, :cond_1d

    nop

    nop

    nop

    nop

    move-object/from16 v28, v9

    nop

    nop

    nop

    and-int v9, v23, v27

    nop

    shr-int v23, v23, v2

    nop

    nop

    nop

    sub-int/2addr v0, v2

    nop

    nop

    if-ne v9, v4, :cond_16

    nop

    nop

    move/from16 v3, v18

    nop

    nop

    nop

    nop

    move/from16 v27, v19

    nop

    nop

    nop

    nop

    nop

    move/from16 v2, v26

    nop

    nop

    nop

    move-object/from16 v9, v28

    nop

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    nop

    goto :goto_14

    nop

    :cond_16
    if-ne v9, v12, :cond_17

    nop

    nop

    nop

    nop

    nop

    move/from16 v29, v15

    nop

    nop

    nop

    nop

    nop

    move/from16 v15, v26

    nop

    move-object/from16 v9, v28

    nop

    move/from16 v28, v2

    nop

    nop

    move/from16 v26, v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, v22

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    move/from16 v22, v0

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    goto/16 :goto_11

    nop

    :cond_17
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    add-int/lit8 v29, v25, 0x1

    nop

    nop

    nop

    nop

    nop

    move/from16 v31, v0

    nop

    nop

    nop

    const/4 v0, -0x1

    nop

    if-ne v8, v0, :cond_18

    nop

    nop

    nop

    nop

    aget-byte v0, v13, v9

    nop

    nop

    nop

    nop

    nop

    aput-byte v0, v7, v25

    nop

    nop

    nop

    nop

    move v8, v9

    nop

    nop

    move v15, v8

    nop

    nop

    nop

    move-object/from16 v9, v28

    nop

    nop

    nop

    nop

    move/from16 v25, v29

    nop

    nop

    nop

    :goto_15
    move/from16 v0, v31

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    :cond_18
    if-lt v9, v3, :cond_19

    nop

    nop

    nop

    nop

    int-to-byte v0, v15

    nop

    aput-byte v0, v14, v30

    nop

    nop

    nop

    nop

    add-int/lit8 v30, v30, 0x1

    nop

    move v0, v8

    nop

    goto :goto_16

    nop

    nop

    nop

    :cond_19
    move v0, v9

    nop

    nop

    nop

    :goto_16
    if-lt v0, v4, :cond_1a

    nop

    nop

    aget-byte v15, v13, v0

    nop

    nop

    nop

    aput-byte v15, v14, v30

    nop

    nop

    nop

    nop

    nop

    aget-short v0, v11, v0

    nop

    nop

    add-int/lit8 v30, v30, 0x1

    nop

    nop

    nop

    goto :goto_16

    nop

    :cond_1a
    aget-byte v0, v13, v0

    nop

    const/16 v15, 0xff

    nop

    nop

    nop

    and-int/2addr v0, v15

    nop

    int-to-byte v15, v0

    nop

    nop

    nop

    nop

    nop

    aput-byte v15, v7, v25

    nop

    nop

    nop

    nop

    nop

    move/from16 v25, v29

    nop

    :goto_17
    if-lez v30, :cond_1b

    nop

    nop

    add-int/lit8 v30, v30, -0x1

    nop

    aget-byte v29, v14, v30

    nop

    nop

    nop

    aput-byte v29, v7, v25

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    add-int/lit8 v25, v25, 0x1

    nop

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    move/from16 v17, v0

    nop

    nop

    nop

    const/16 v0, 0x1000

    nop

    if-ge v3, v0, :cond_1c

    nop

    nop

    int-to-short v8, v8

    nop

    nop

    nop

    aput-short v8, v11, v3

    nop

    nop

    nop

    nop

    nop

    aput-byte v15, v13, v3

    nop

    nop

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    and-int v8, v3, v27

    nop

    nop

    nop

    if-nez v8, :cond_1c

    nop

    nop

    nop

    if-ge v3, v0, :cond_1c

    nop

    nop

    nop

    add-int v27, v27, v3

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    :cond_1c
    move v8, v9

    nop

    nop

    nop

    nop

    move/from16 v15, v17

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v28

    nop

    goto/16 :goto_15

    nop

    nop

    :cond_1d
    move/from16 v31, v0

    nop

    nop

    nop

    move/from16 v28, v2

    nop

    nop

    move/from16 v29, v15

    nop

    nop

    nop

    nop

    move-object/from16 v2, v22

    nop

    nop

    nop

    nop

    move/from16 v15, v26

    nop

    move/from16 v22, v31

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    move/from16 v26, v3

    nop

    const/4 v3, 0x3

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    :cond_1e
    move-object/from16 v28, v9

    nop

    nop

    nop

    nop

    nop

    move v3, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v25

    nop

    nop

    nop

    :goto_18
    invoke-static {v7, v0, v10, v3}, Ljava/util/Arrays;->fill([BIIB)V

    iget-boolean v0, v5, Lfiy;->e:Z

    nop

    nop

    nop

    if-nez v0, :cond_28

    nop

    iget v0, v1, Lfjb;->r:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    if-eq v0, v2, :cond_1f

    nop

    nop

    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    iget-object v0, v1, Lfjb;->d:[I

    nop

    nop

    nop

    nop

    iget v2, v5, Lfiy;->d:I

    nop

    iget v4, v5, Lfiy;->b:I

    nop

    nop

    nop

    nop

    iget v6, v5, Lfiy;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v7, v5, Lfiy;->a:I

    nop

    nop

    nop

    iget v8, v1, Lfjb;->e:I

    nop

    nop

    nop

    iget v9, v1, Lfjb;->t:I

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lfjb;->c:[B

    nop

    iget-object v11, v1, Lfjb;->k:[I

    nop

    nop

    nop

    move v13, v3

    nop

    nop

    nop

    nop

    const/4 v12, -0x1

    nop

    nop

    :goto_19
    if-ge v13, v2, :cond_24

    nop

    nop

    nop

    nop

    add-int v14, v13, v4

    nop

    nop

    nop

    nop

    mul-int/2addr v14, v9

    nop

    nop

    nop

    add-int v15, v14, v7

    nop

    nop

    nop

    nop

    nop

    add-int v3, v15, v6

    nop

    nop

    add-int/2addr v14, v9

    nop

    nop

    nop

    nop

    move/from16 v16, v2

    nop

    nop

    nop

    nop

    iget v2, v5, Lfiy;->c:I

    nop

    nop

    nop

    nop

    mul-int/2addr v2, v13

    nop

    nop

    nop

    :goto_1a
    if-ge v14, v3, :cond_20

    nop

    nop

    nop

    move/from16 v17, v3

    nop

    nop

    nop

    nop

    nop

    move v3, v14

    nop

    nop

    nop

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    :cond_20
    move/from16 v17, v3

    nop

    nop

    :goto_1b
    if-ge v15, v3, :cond_23

    nop

    nop

    aget-byte v3, v10, v2

    nop

    move/from16 v18, v4

    nop

    nop

    and-int/lit16 v4, v3, 0xff

    nop

    nop

    if-eq v4, v12, :cond_22

    nop

    nop

    aget v4, v11, v4

    nop

    nop

    nop

    if-eqz v4, :cond_21

    nop

    aput v4, v0, v15

    nop

    nop

    nop

    goto :goto_1c

    nop

    :cond_21
    move v12, v3

    nop

    nop

    nop

    nop

    :cond_22
    :goto_1c
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    move/from16 v3, v17

    nop

    nop

    nop

    nop

    nop

    move/from16 v4, v18

    nop

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    :cond_23
    move/from16 v18, v4

    nop

    add-int/lit8 v13, v13, 0x1

    nop

    move/from16 v2, v16

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_24
    iget-object v0, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    if-eqz v0, :cond_26

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    :cond_25
    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_26
    :goto_1e
    iget-object v0, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_27

    nop

    nop

    if-nez v8, :cond_27

    nop

    nop

    nop

    nop

    nop

    const/4 v0, -0x1

    nop

    nop

    if-eq v12, v0, :cond_27

    nop

    goto :goto_1d

    nop

    :cond_27
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :cond_28
    :goto_20
    iget-object v0, v1, Lfjb;->d:[I

    nop

    nop

    nop

    nop

    iget v2, v5, Lfiy;->d:I

    nop

    nop

    nop

    nop

    iget v3, v1, Lfjb;->r:I

    nop

    nop

    nop

    nop

    div-int/2addr v2, v3

    nop

    nop

    nop

    nop

    iget v4, v5, Lfiy;->b:I

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v4, v3

    nop

    nop

    iget v6, v5, Lfiy;->c:I

    nop

    nop

    nop

    nop

    nop

    div-int/2addr v6, v3

    nop

    nop

    nop

    nop

    nop

    iget v7, v5, Lfiy;->a:I

    nop

    nop

    nop

    nop

    div-int/2addr v7, v3

    nop

    nop

    nop

    nop

    nop

    iget v8, v1, Lfjb;->e:I

    nop

    nop

    iget v9, v1, Lfjb;->t:I

    nop

    nop

    iget v10, v1, Lfjb;->s:I

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v1, Lfjb;->c:[B

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v1, Lfjb;->k:[I

    nop

    iget-object v13, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    move-object v14, v13

    nop

    move/from16 v18, v31

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    const/16 v17, 0x1

    nop

    nop

    nop

    :goto_21
    if-ge v13, v2, :cond_3d

    nop

    nop

    nop

    move-object/from16 v19, v14

    nop

    nop

    iget-boolean v14, v5, Lfiy;->e:Z

    nop

    if-eqz v14, :cond_2d

    nop

    if-lt v15, v2, :cond_2c

    nop

    nop

    add-int/lit8 v14, v17, 0x1

    nop

    nop

    nop

    nop

    nop

    move/from16 v20, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    if-eq v14, v2, :cond_2b

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    nop

    nop

    if-eq v14, v2, :cond_2a

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-eq v14, v2, :cond_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move/from16 v17, v14

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_29
    move/from16 v17, v14

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    const/16 v18, 0x2

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    const/4 v2, 0x4

    nop

    nop

    move/from16 v18, v2

    nop

    nop

    nop

    nop

    move/from16 v17, v14

    nop

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    goto :goto_23

    nop

    nop

    nop

    :cond_2b
    const/4 v2, 0x4

    nop

    nop

    move v15, v2

    nop

    nop

    goto :goto_22

    nop

    nop

    :cond_2c
    move/from16 v20, v2

    nop

    nop

    nop

    nop

    :goto_23
    add-int v2, v15, v18

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    :cond_2d
    move/from16 v20, v2

    nop

    nop

    nop

    move v2, v15

    nop

    nop

    move v15, v13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int/2addr v15, v4

    nop

    nop

    if-ge v15, v10, :cond_3b

    nop

    mul-int/2addr v15, v9

    nop

    add-int v14, v15, v7

    nop

    nop

    nop

    nop

    move/from16 v21, v2

    nop

    nop

    nop

    nop

    add-int v2, v14, v6

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v15, v9

    nop

    nop

    nop

    nop

    nop

    mul-int v22, v13, v3

    nop

    nop

    move/from16 v23, v4

    nop

    nop

    nop

    nop

    nop

    iget v4, v5, Lfiy;->c:I

    nop

    mul-int v22, v22, v4

    nop

    nop

    nop

    nop

    nop

    if-ge v15, v2, :cond_2e

    nop

    nop

    nop

    move v2, v15

    nop

    nop

    nop

    nop

    :cond_2e
    const/4 v4, 0x1

    nop

    nop

    nop

    if-ne v3, v4, :cond_32

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ge v14, v2, :cond_31

    nop

    aget-byte v4, v11, v22

    nop

    nop

    nop

    nop

    const/16 v15, 0xff

    nop

    and-int/2addr v4, v15

    nop

    nop

    nop

    nop

    aget v4, v12, v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_2f

    nop

    nop

    nop

    aput v4, v0, v14

    nop

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    :cond_2f
    if-nez v8, :cond_30

    nop

    nop

    nop

    if-nez v19, :cond_30

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    nop

    nop

    nop

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    :cond_30
    :goto_26
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v22, v22, 0x1

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    :cond_31
    move/from16 v32, v6

    nop

    move/from16 v33, v7

    nop

    nop

    nop

    move/from16 v34, v9

    nop

    nop

    move-object/from16 v14, v19

    nop

    nop

    nop

    const/16 v7, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :cond_32
    sub-int v4, v2, v14

    nop

    mul-int/2addr v4, v3

    nop

    add-int v4, v22, v4

    nop

    nop

    nop

    nop

    :goto_27
    if-ge v14, v2, :cond_3c

    nop

    nop

    iget v15, v5, Lfiy;->c:I

    nop

    nop

    nop

    nop

    move/from16 v30, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v32, v6

    nop

    move/from16 v2, v22

    nop

    nop

    const/16 v24, 0x0

    nop

    nop

    nop

    nop

    const/16 v25, 0x0

    nop

    const/16 v26, 0x0

    nop

    nop

    nop

    nop

    const/16 v27, 0x0

    nop

    const/16 v29, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v6, v1, Lfjb;->r:I

    nop

    nop

    nop

    nop

    nop

    add-int v6, v22, v6

    nop

    nop

    nop

    if-ge v2, v6, :cond_34

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v1, Lfjb;->c:[B

    nop

    nop

    nop

    nop

    nop

    move/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    array-length v7, v6

    nop

    nop

    if-ge v2, v7, :cond_35

    nop

    nop

    if-ge v2, v4, :cond_35

    nop

    aget-byte v6, v6, v2

    nop

    const/16 v7, 0xff

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v6, v7

    nop

    nop

    nop

    nop

    iget-object v7, v1, Lfjb;->k:[I

    nop

    nop

    aget v6, v7, v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_33

    nop

    shr-int/lit8 v7, v6, 0x18

    nop

    move/from16 v34, v9

    nop

    nop

    const/16 v9, 0xff

    nop

    nop

    and-int/2addr v7, v9

    nop

    nop

    nop

    nop

    add-int v24, v24, v7

    nop

    nop

    nop

    nop

    shr-int/lit8 v7, v6, 0x10

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v7, v9

    nop

    nop

    nop

    add-int v25, v25, v7

    nop

    nop

    shr-int/lit8 v7, v6, 0x8

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v7, v9

    nop

    nop

    nop

    nop

    add-int v26, v26, v7

    nop

    nop

    nop

    nop

    nop

    and-int/lit16 v6, v6, 0xff

    nop

    nop

    nop

    nop

    nop

    add-int v27, v27, v6

    nop

    add-int/lit8 v29, v29, 0x1

    nop

    nop

    goto :goto_29

    nop

    nop

    nop

    nop

    :cond_33
    move/from16 v34, v9

    nop

    :goto_29
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    move/from16 v7, v33

    nop

    nop

    nop

    move/from16 v9, v34

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_34
    move/from16 v33, v7

    nop

    nop

    nop

    :cond_35
    move/from16 v34, v9

    nop

    add-int v15, v22, v15

    nop

    nop

    nop

    nop

    move v2, v15

    nop

    :goto_2a
    iget v6, v1, Lfjb;->r:I

    nop

    nop

    nop

    add-int/2addr v6, v15

    nop

    nop

    if-ge v2, v6, :cond_37

    nop

    iget-object v6, v1, Lfjb;->c:[B

    nop

    nop

    nop

    nop

    nop

    array-length v7, v6

    nop

    nop

    nop

    if-ge v2, v7, :cond_37

    nop

    nop

    if-ge v2, v4, :cond_37

    nop

    nop

    nop

    aget-byte v6, v6, v2

    nop

    nop

    nop

    nop

    const/16 v7, 0xff

    nop

    nop

    nop

    nop

    nop

    and-int/2addr v6, v7

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lfjb;->k:[I

    nop

    nop

    nop

    nop

    aget v6, v9, v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_36

    nop

    nop

    nop

    shr-int/lit8 v9, v6, 0x18

    nop

    nop

    and-int/2addr v9, v7

    nop

    nop

    nop

    add-int v24, v24, v9

    nop

    nop

    nop

    nop

    nop

    shr-int/lit8 v9, v6, 0x10

    nop

    and-int/2addr v9, v7

    nop

    nop

    add-int v25, v25, v9

    nop

    shr-int/lit8 v9, v6, 0x8

    nop

    and-int/2addr v9, v7

    nop

    nop

    nop

    add-int v26, v26, v9

    nop

    nop

    and-int/lit16 v6, v6, 0xff

    nop

    nop

    nop

    add-int v27, v27, v6

    nop

    nop

    nop

    add-int/lit8 v29, v29, 0x1

    nop

    nop

    nop

    :cond_36
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_2a

    nop

    :cond_37
    const/16 v7, 0xff

    nop

    nop

    nop

    if-nez v29, :cond_38

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    :cond_38
    div-int v24, v24, v29

    nop

    nop

    nop

    shl-int/lit8 v2, v24, 0x18

    nop

    nop

    nop

    nop

    div-int v25, v25, v29

    nop

    nop

    nop

    nop

    nop

    shl-int/lit8 v6, v25, 0x10

    nop

    nop

    nop

    nop

    nop

    div-int v26, v26, v29

    nop

    nop

    nop

    nop

    shl-int/lit8 v9, v26, 0x8

    nop

    nop

    nop

    div-int v27, v27, v29

    nop

    nop

    nop

    nop

    or-int/2addr v2, v6

    nop

    nop

    or-int/2addr v2, v9

    nop

    or-int v2, v2, v27

    nop

    :goto_2b
    if-eqz v2, :cond_39

    nop

    aput v2, v0, v14

    nop

    goto :goto_2c

    nop

    nop

    :cond_39
    if-nez v8, :cond_3a

    nop

    if-nez v19, :cond_3a

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    move-object/from16 v19, v6

    nop

    :cond_3a
    :goto_2c
    add-int v22, v22, v3

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    move/from16 v2, v30

    nop

    move/from16 v6, v32

    nop

    nop

    nop

    move/from16 v7, v33

    nop

    nop

    nop

    move/from16 v9, v34

    nop

    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :cond_3b
    move/from16 v21, v2

    nop

    nop

    nop

    move/from16 v23, v4

    nop

    nop

    nop

    :cond_3c
    move/from16 v32, v6

    nop

    nop

    nop

    nop

    move/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    move/from16 v34, v9

    nop

    nop

    const/16 v7, 0xff

    nop

    move-object/from16 v14, v19

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    nop

    move/from16 v2, v20

    nop

    nop

    nop

    nop

    nop

    move/from16 v15, v21

    nop

    nop

    nop

    nop

    nop

    move/from16 v4, v23

    nop

    move/from16 v6, v32

    nop

    nop

    nop

    move/from16 v7, v33

    nop

    nop

    nop

    move/from16 v9, v34

    nop

    nop

    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :cond_3d
    move-object/from16 v19, v14

    nop

    iget-object v0, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_3f

    nop

    if-nez v19, :cond_3e

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    goto :goto_2e

    nop

    nop

    :cond_3e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v1, Lfjb;->h:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    :goto_2f
    iget-boolean v0, v1, Lfjb;->p:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_42

    nop

    iget v0, v5, Lfiy;->g:I

    nop

    nop

    if-eqz v0, :cond_40

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    if-ne v0, v2, :cond_42

    nop

    nop

    :cond_40
    iget-object v0, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    if-nez v0, :cond_41

    nop

    nop

    nop

    invoke-direct/range {p0 .. p0}, Lfjb;->23ce148e54b083367f51e25c7971761em()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    iput-object v0, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    nop

    :cond_41
    iget-object v10, v1, Lfjb;->g:Landroid/graphics/Bitmap;

    nop

    nop

    iget v0, v1, Lfjb;->t:I

    nop

    nop

    iget v2, v1, Lfjb;->s:I

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    move-object/from16 v11, v28

    nop

    nop

    move v13, v0

    nop

    nop

    nop

    nop

    move/from16 v16, v0

    nop

    nop

    move/from16 v17, v2

    nop

    nop

    nop

    nop

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_42
    invoke-direct/range {p0 .. p0}, Lfjb;->23ce148e54b083367f51e25c7971761em()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    iget v2, v1, Lfjb;->t:I

    nop

    nop

    nop

    iget v3, v1, Lfjb;->s:I

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    const/4 v15, 0x0

    nop

    move-object v10, v0

    nop

    nop

    nop

    nop

    move-object/from16 v11, v28

    nop

    nop

    nop

    nop

    nop

    move v13, v2

    nop

    nop

    nop

    nop

    move/from16 v16, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v3

    nop

    nop

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_31
    monitor-exit p0

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

    :goto_32
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_43

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_8

    nop

    :goto_34
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, v1, Lfjb;->f:Lfiz;

    nop

    nop

    iget v0, v0, Lfiz;->c:I

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    if-lez v0, :cond_44

    nop

    nop

    iget v0, v1, Lfjb;->e:I

    nop

    nop

    nop

    if-gez v0, :cond_45

    nop

    nop

    :cond_44
    iput v2, v1, Lfjb;->q:I

    nop

    nop

    :cond_45
    iget v0, v1, Lfjb;->q:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v2, :cond_0

    nop

    const/4 v4, 0x2

    nop

    nop

    if-ne v0, v4, :cond_46

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    nop

    nop

    nop

    :cond_46
    const/4 v0, 0x0

    nop

    iput v0, v1, Lfjb;->q:I

    nop

    nop

    iget-object v5, v1, Lfjb;->b:[B

    nop

    nop

    const/16 v6, 0xff

    nop

    if-nez v5, :cond_47

    nop

    nop

    nop

    iget-object v5, v1, Lfjb;->j:Liof;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Liof;->P(I)[B

    move-result-object v5

    nop

    nop

    nop

    nop

    iput-object v5, v1, Lfjb;->b:[B

    nop

    :cond_47
    iget-object v5, v1, Lfjb;->f:Lfiz;

    nop

    iget-object v5, v5, Lfiz;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget v7, v1, Lfjb;->e:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lfiy;

    nop

    nop

    iget v7, v1, Lfjb;->e:I

    nop

    nop

    nop

    nop

    nop

    const/4 v8, -0x1

    nop

    nop

    add-int/2addr v7, v8

    nop

    nop

    nop

    if-ltz v7, :cond_48

    nop

    iget-object v9, v1, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    iget-object v9, v9, Lfiz;->e:Ljava/util/List;

    nop

    nop

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    check-cast v7, Lfiy;

    nop

    nop

    goto :goto_36

    nop

    nop

    :cond_48
    move-object v7, v3

    nop

    nop

    :goto_36
    iget-object v9, v5, Lfiy;->k:[I

    nop

    nop

    if-nez v9, :cond_49

    nop

    nop

    nop

    iget-object v9, v1, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    iget-object v9, v9, Lfiz;->a:[I

    nop

    nop

    nop

    nop

    nop

    :cond_49
    iput-object v9, v1, Lfjb;->k:[I

    nop

    nop

    nop

    nop

    if-nez v9, :cond_1

    nop

    nop

    iput v2, v1, Lfjb;->q:I

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Lfjb;->e:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    :goto_6
    iget v1, v1, Lfiz;->c:I

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

    :goto_7
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_a
    rem-int/2addr v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

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

    :goto_d
    iput v0, p0, Lfjb;->e:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, 0x1

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Lfiz;Ljava/nio/ByteBuffer;I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    const-string p1, "Sample size must be >=0, not: "

    nop

    nop

    nop

    new-instance p2, Ljava/lang/IllegalArgumentException;

    nop

    invoke-static {p3, p1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

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
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput v0, p0, Lfjb;->q:I

    nop

    nop

    nop

    iput-object p1, p0, Lfjb;->f:Lfiz;

    nop

    nop

    nop

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    iput v1, p0, Lfjb;->e:I

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    nop

    nop

    iput-object p2, p0, Lfjb;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lfjb;->a:Ljava/nio/ByteBuffer;

    nop

    nop

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lfjb;->p:Z

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p1, Lfiz;->e:Ljava/util/List;

    nop

    nop

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lfiy;

    nop

    nop

    nop

    iget v0, v0, Lfiy;->g:I

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    const/4 p2, 0x1

    nop

    nop

    iput-boolean p2, p0, Lfjb;->p:Z

    nop

    :cond_2
    iput p3, p0, Lfjb;->r:I

    nop

    nop

    nop

    iget p2, p1, Lfiz;->f:I

    nop

    nop

    nop

    nop

    div-int v0, p2, p3

    nop

    nop

    iput v0, p0, Lfjb;->t:I

    nop

    nop

    nop

    iget p1, p1, Lfiz;->g:I

    nop

    nop

    nop

    div-int p3, p1, p3

    nop

    nop

    nop

    iput p3, p0, Lfjb;->s:I

    nop

    nop

    nop

    iget-object p3, p0, Lfjb;->j:Liof;

    nop

    nop

    nop

    mul-int/2addr p2, p1

    nop

    nop

    nop

    invoke-virtual {p3, p2}, Liof;->P(I)[B

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Lfjb;->c:[B

    nop

    iget-object p1, p0, Lfjb;->j:Liof;

    nop

    nop

    nop

    iget p2, p0, Lfjb;->t:I

    nop

    nop

    nop

    nop

    nop

    iget p3, p0, Lfjb;->s:I

    nop

    mul-int/2addr p2, p3

    nop

    nop

    nop

    const-class p3, [I

    nop

    nop

    nop

    nop

    iget-object p1, p1, Liof;->a:Ljava/lang/Object;

    nop

    check-cast p1, Lfmm;

    nop

    nop

    nop

    invoke-virtual {p1, p2, p3}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, [I

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lfjb;->d:[I

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    monitor-exit p0

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

    :goto_b
    return-void

    nop

    :catchall_0
    move-exception p1

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

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
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
.end method
