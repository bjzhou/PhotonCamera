.class public final Lbxt;
.super Ljava/lang/Object;

# interfaces
.implements Lbqh;


# static fields
.field private static final c:Lbkc;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final d:Lbkc;

.field private final e:Ldne;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbkc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbkc;-><init>([C)V

    sput-object v0, Lbxt;->c:Lbkc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lbsw;Lbsu;)V
    .locals 1

    sget-object v0, Lbxt;->c:Lbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lbxt;->a:Landroid/content/Context;

    iput-object p2, p0, Lbxt;->b:Ljava/util/List;

    new-instance p1, Ldne;

    invoke-direct {p1, p3, p4}, Ldne;-><init>(Lbsw;Lbsu;)V

    iput-object p1, p0, Lbxt;->e:Ldne;

    iput-object v0, p0, Lbxt;->d:Lbkc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILbqf;)Lbsn;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    check-cast v5, Ljava/nio/ByteBuffer;

    iget-object v0, v1, Lbxt;->d:Lbkc;

    invoke-virtual {v0, v5}, Lbkc;->b(Ljava/nio/ByteBuffer;)Lbpq;

    move-result-object v10

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v10, Lbpq;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_19

    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v10, Lbpq;->c:Lbpp;

    move-object v4, v0

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_0
    const/4 v6, 0x6

    if-ge v4, v6, :cond_1

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GIF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-nez v0, :cond_2

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iput v3, v0, Lbpp;->b:I

    goto :goto_2

    :cond_2
    iget-object v0, v10, Lbpq;->c:Lbpp;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpp;->f:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpp;->g:I

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    iget-object v4, v10, Lbpq;->c:Lbpp;

    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, v4, Lbpp;->h:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v0, v8

    iput v0, v4, Lbpp;->i:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v4

    iput v4, v0, Lbpp;->j:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v4

    iput v4, v0, Lbpp;->k:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-boolean v0, v0, Lbpp;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget v4, v0, Lbpp;->i:I

    invoke-virtual {v10, v4}, Lbpq;->f(I)[I

    move-result-object v4

    iput-object v4, v0, Lbpp;->a:[I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v4, v0, Lbpp;->a:[I

    iget v8, v0, Lbpp;->j:I

    aget v4, v4, v8

    iput v4, v0, Lbpp;->l:I

    :cond_4
    :goto_2
    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_5
    :goto_3
    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget v0, v0, Lbpp;->c:I

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, v10, Lbpq;->c:Lbpp;

    goto/16 :goto_8

    :sswitch_0
    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v4, v0, Lbpp;->d:Lbpo;

    if-nez v4, :cond_6

    new-instance v4, Lbpo;

    invoke-direct {v4}, Lbpo;-><init>()V

    iput-object v4, v0, Lbpp;->d:Lbpo;

    :cond_6
    iget-object v0, v0, Lbpp;->d:Lbpo;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpo;->a:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v0, v0, Lbpp;->d:Lbpo;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpo;->b:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v0, v0, Lbpp;->d:Lbpo;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpo;->c:I

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v0, v0, Lbpp;->d:Lbpo;

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v4

    iput v4, v0, Lbpo;->d:I

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    and-int/lit16 v4, v0, 0x80

    and-int/lit8 v8, v0, 0x7

    add-int/2addr v8, v3

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v8, v8

    iget-object v9, v10, Lbpq;->c:Lbpp;

    iget-object v9, v9, Lbpp;->d:Lbpo;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v9, Lbpo;->e:Z

    if-eqz v4, :cond_8

    invoke-virtual {v10, v8}, Lbpq;->f(I)[I

    move-result-object v0

    iput-object v0, v9, Lbpo;->k:[I

    goto :goto_5

    :cond_8
    iput-object v11, v9, Lbpo;->k:[I

    :goto_5
    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget-object v0, v0, Lbpp;->d:Lbpo;

    iget-object v4, v10, Lbpq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v0, Lbpo;->j:I

    invoke-virtual {v10}, Lbpq;->a()I

    invoke-virtual {v10}, Lbpq;->d()V

    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget v4, v0, Lbpp;->c:I

    add-int/2addr v4, v3

    iput v4, v0, Lbpp;->c:I

    iget-object v4, v0, Lbpp;->e:Ljava/util/List;

    iget-object v0, v0, Lbpp;->d:Lbpo;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1
    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    const/4 v4, 0x2

    sparse-switch v0, :sswitch_data_1

    invoke-virtual {v10}, Lbpq;->d()V

    goto/16 :goto_3

    :sswitch_2
    invoke-virtual {v10}, Lbpq;->c()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_6
    const/16 v9, 0xb

    if-ge v8, v9, :cond_9

    iget-object v9, v10, Lbpq;->a:[B

    aget-byte v9, v9, v8

    int-to-char v9, v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "NETSCAPE2.0"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    invoke-virtual {v10}, Lbpq;->c()V

    iget-object v0, v10, Lbpq;->a:[B

    aget-byte v8, v0, v2

    if-ne v8, v3, :cond_b

    aget-byte v8, v0, v3

    and-int/lit16 v8, v8, 0xff

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iget-object v9, v10, Lbpq;->c:Lbpp;

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v8

    iput v0, v9, Lbpp;->m:I

    :cond_b
    iget v0, v10, Lbpq;->d:I

    if-lez v0, :cond_5

    invoke-virtual {v10}, Lbpq;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v10}, Lbpq;->d()V

    goto/16 :goto_3

    :sswitch_3
    invoke-virtual {v10}, Lbpq;->d()V

    goto/16 :goto_3

    :sswitch_4
    iget-object v0, v10, Lbpq;->c:Lbpp;

    new-instance v8, Lbpo;

    invoke-direct {v8}, Lbpo;-><init>()V

    iput-object v8, v0, Lbpp;->d:Lbpo;

    invoke-virtual {v10}, Lbpq;->a()I

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    iget-object v8, v10, Lbpq;->c:Lbpp;

    iget-object v8, v8, Lbpp;->d:Lbpo;

    and-int/lit8 v9, v0, 0x1c

    shr-int/2addr v9, v4

    iput v9, v8, Lbpo;->g:I

    if-nez v9, :cond_d

    iput v3, v8, Lbpo;->g:I

    :cond_d
    and-int/lit8 v0, v0, 0x1

    if-eq v3, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, v8, Lbpo;->f:Z

    invoke-virtual {v10}, Lbpq;->b()I

    move-result v0

    const/16 v8, 0xa

    if-ge v0, v4, :cond_f

    const/16 v0, 0xa

    :cond_f
    iget-object v4, v10, Lbpq;->c:Lbpp;

    iget-object v4, v4, Lbpp;->d:Lbpo;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v4, Lbpo;->i:I

    invoke-virtual {v10}, Lbpq;->a()I

    move-result v0

    iput v0, v4, Lbpo;->h:I

    invoke-virtual {v10}, Lbpq;->a()I

    goto/16 :goto_3

    :sswitch_5
    invoke-virtual {v10}, Lbpq;->d()V

    goto/16 :goto_3

    :goto_8
    iput v3, v0, Lbpp;->b:I

    goto/16 :goto_3

    :cond_10
    :sswitch_6
    iget-object v0, v10, Lbpq;->c:Lbpp;

    iget v4, v0, Lbpp;->c:I

    if-gez v4, :cond_11

    iput v3, v0, Lbpp;->b:I

    :cond_11
    iget-object v0, v10, Lbpq;->c:Lbpp;

    move-object v4, v0

    :goto_9
    iget v0, v4, Lbpp;->c:I

    if-lez v0, :cond_18

    iget v0, v4, Lbpp;->b:I

    if-eqz v0, :cond_12

    goto/16 :goto_d

    :cond_12
    sget-object v0, Lbyc;->a:Lbqe;

    move-object/from16 v6, p4

    invoke-virtual {v6, v0}, Lbqf;->b(Lbqe;)Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Lbps;->b:Lbps;

    if-ne v0, v6, :cond_13

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_a

    :cond_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_a
    iget v6, v4, Lbpp;->g:I

    div-int v6, v6, p3

    iget v7, v4, Lbpp;->f:I

    div-int v7, v7, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-nez v6, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    :goto_b
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v3, v1, Lbxt;->e:Ldne;

    new-instance v14, Lbpr;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v9}, Lbpr;-><init>(Ldne;Lbpp;Ljava/nio/ByteBuffer;I[B[B[B)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v2, :cond_16

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-ne v0, v2, :cond_15

    goto :goto_c

    :cond_15
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", must be one of "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    :goto_c
    iput-object v0, v14, Lbpr;->i:Landroid/graphics/Bitmap$Config;

    invoke-interface {v14}, Lbpn;->b()V

    invoke-interface {v14}, Lbpn;->a()Landroid/graphics/Bitmap;

    move-result-object v18

    if-nez v18, :cond_17

    goto :goto_d

    :cond_17
    sget-object v17, Lbvu;->b:Lbqj;

    new-instance v0, Lbxv;

    iget-object v2, v1, Lbxt;->a:Landroid/content/Context;

    new-instance v3, Lbxu;

    new-instance v4, Lbyb;

    invoke-static {v2}, Lbol;->b(Landroid/content/Context;)Lbol;

    move-result-object v13

    move-object v12, v4

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-direct/range {v12 .. v18}, Lbyb;-><init>(Lbol;Lbpn;IILbqj;Landroid/graphics/Bitmap;)V

    invoke-direct {v3, v4}, Lbxu;-><init>(Lbyb;)V

    invoke-direct {v0, v3}, Lbxv;-><init>(Lbxu;)V

    new-instance v11, Lbxx;

    invoke-direct {v11, v0}, Lbxx;-><init>(Lbxv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_d

    :cond_18
    :goto_d
    iget-object v0, v1, Lbxt;->d:Lbkc;

    invoke-virtual {v0, v10}, Lbkc;->c(Lbpq;)V

    return-object v11

    :cond_19
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "You must call setData() before parseHeader()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lbxt;->d:Lbkc;

    invoke-virtual {v2, v10}, Lbkc;->c(Lbpq;)V

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_4
        0xfe -> :sswitch_3
        0xff -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Lbqf;)Z
    .locals 1

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lbyc;->b:Lbqe;

    invoke-virtual {p2, v0}, Lbqf;->b(Lbqe;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lbxt;->b:Ljava/util/List;

    invoke-static {p2, p1}, Lbze;->D(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    sget-object p2, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
