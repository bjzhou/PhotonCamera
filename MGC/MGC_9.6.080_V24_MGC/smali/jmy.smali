.class public final Ljmy;
.super Ljmf;
.source "PG"


# instance fields
.field public f:Ljmi;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 15

    goto/32 :goto_5

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

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8

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
    goto/32 :goto_10

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
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

    nop

    :goto_5
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljmg;->printStackTrace()V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljmf;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iput v0, p0, Ljmy;->g:I

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ljmi;

    nop

    nop

    nop

    invoke-direct {v1}, Ljmi;-><init>()V

    iput-object v1, p0, Ljmy;->f:Ljmi;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljma;->d:[F

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljmi;->j([F)V

    const v1, 0xe5b0

    nop

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    iput-object v1, p0, Ljmf;->a:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x2648

    nop

    nop

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ljmf;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    const v1, 0x9920

    nop

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    nop

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    nop

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ljmf;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    const v1, -0x3f5ccccc    # -5.1000004f

    nop

    nop

    move v2, v0

    nop

    nop

    nop

    nop

    nop

    move v3, v2

    nop

    nop

    move v5, v3

    nop

    nop

    nop

    move v4, v1

    nop

    nop

    nop

    :goto_d
    const/16 v6, 0x23

    nop

    if-ge v2, v6, :cond_3

    nop

    nop

    nop

    nop

    move v7, v0

    nop

    nop

    nop

    move v8, v1

    nop

    nop

    nop

    :goto_e
    const v9, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    nop

    if-ge v7, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v5, 0x1

    nop

    nop

    const v11, -0x430a3d70    # -0.030000001f

    nop

    nop

    nop

    nop

    nop

    add-float v12, v4, v11

    nop

    invoke-virtual {p0, v5, v12, v8}, Ljmf;->d(IFF)V

    int-to-short v10, v10

    nop

    nop

    add-int/lit8 v12, v10, 0x1

    nop

    nop

    nop

    const v13, 0x3cf5c290    # 0.030000001f

    nop

    nop

    add-float v14, v4, v13

    nop

    nop

    nop

    invoke-virtual {p0, v10, v14, v8}, Ljmf;->d(IFF)V

    int-to-short v10, v12

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v12, v10, 0x1

    nop

    add-float/2addr v11, v8

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v10, v4, v11}, Ljmf;->d(IFF)V

    int-to-short v10, v12

    nop

    add-int/lit8 v11, v10, 0x1

    nop

    add-float/2addr v13, v8

    nop

    nop

    invoke-virtual {p0, v10, v4, v13}, Ljmf;->d(IFF)V

    move v10, v0

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v12, 0x4

    nop

    if-ge v10, v12, :cond_1

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v12, v3, 0x1

    nop

    nop

    add-int v13, v5, v10

    nop

    nop

    iget-object v14, p0, Ljmf;->c:Ljava/nio/ShortBuffer;

    nop

    nop

    nop

    int-to-short v13, v13

    nop

    nop

    nop

    nop

    invoke-virtual {v14, v3, v13}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    int-to-short v3, v12

    nop

    nop

    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    int-to-short v5, v11

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v8, v9

    nop

    nop

    nop

    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    nop

    :cond_2
    add-float/2addr v4, v9

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    goto/16 :goto_d

    nop

    :cond_3
    iput v3, p0, Ljmy;->g:I

    nop

    nop
    :try_end_0
    .catch Ljmg; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c([F)V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Ljmh;->g(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p1, p0, Ljmy;->g:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Ljmy;->a:Ljava/nio/FloatBuffer;

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
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v1, Ljma;->d:[F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Ljmy;->c:Ljava/nio/ShortBuffer;

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

    :goto_9
    invoke-virtual {v0}, Ljmh;->c()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljmy;->f:Ljmi;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljmy;->f:Ljmi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Ljmh;->e(Ljava/nio/FloatBuffer;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Ljmy;->b:Ljava/nio/FloatBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljmy;->f:Ljmi;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Ljmy;->c:Ljava/nio/ShortBuffer;

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

    :goto_15
    invoke-static {v1, p1, v0, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7

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

    :goto_17
    invoke-virtual {v0, p1}, Ljmh;->f([F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x3

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

    :goto_1a
    iget-object v0, p0, Ljmy;->f:Ljmi;

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

    :goto_1b
    iget-object v0, p0, Ljmy;->f:Ljmi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0x1403

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljmi;->j([F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop
.end method
