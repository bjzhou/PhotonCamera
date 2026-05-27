.class public final synthetic Lcnv;
.super Ljava/lang/Object;

# interfaces
.implements Lnnn;


# instance fields
.field public final synthetic a:Lcny;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcny;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcnv;->a:Lcny;

    iput p2, p0, Lcnv;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 14

    iget-object v0, p0, Lcnv;->a:Lcny;

    iget v1, p0, Lcnv;->b:I

    iget-object v2, v0, Lcny;->g:Ljava/lang/Object;

    monitor-enter v2

    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcnx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v4, v3, Lcnx;->a:Lkeb;

    iget-object v3, v3, Lcnx;->b:Lkfj;

    invoke-interface {v4, v3}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Lkpb;->c()I

    move-result v4

    invoke-interface {v3}, Lkpb;->b()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v4, v5, :cond_1

    invoke-interface {v3}, Lkpb;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3}, Lkpb;->c()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move v6, v4

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    invoke-interface {v3}, Lkpb;->c()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v3}, Lkpb;->b()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_1
    invoke-interface {v3}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_a

    if-nez v5, :cond_2

    :try_start_3
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    goto :goto_0

    :cond_2
    const/high16 v7, 0x44000000    # 512.0f

    if-eqz v1, :cond_4

    const/16 v8, 0xb4

    if-ne v1, v8, :cond_3

    goto :goto_2

    :cond_3
    mul-float v6, v6, v7

    mul-float v4, v4, v7

    float-to-int v4, v4

    float-to-int v6, v6

    goto :goto_3

    :cond_4
    :goto_2
    mul-float v4, v4, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    float-to-int v4, v4

    move v13, v6

    move v6, v4

    move v4, v13

    :goto_3
    :try_start_4
    iget-object v7, v0, Lcny;->f:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    iget-boolean v8, v0, Lcny;->l:Z

    if-eqz v8, :cond_5

    sget-object v4, Lcny;->e:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v6, 0x161

    invoke-interface {v4, v6}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v6, "glContext is already closed."

    invoke-interface {v4, v6}, Lnah;->o(Ljava/lang/String;)V

    sget-object v4, Lmpx;->a:Lmpx;

    monitor-exit v7

    goto :goto_5

    :cond_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    iget-object v7, v0, Lcny;->h:Llbd;

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v6, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v6, v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    :try_start_7
    invoke-static {v7, v6}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    invoke-static {v4}, Llfd;->a(Landroid/graphics/Bitmap;)Llfb;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    move-object v10, v9

    check-cast v10, Llfc;

    iget-object v10, v10, Llfc;->a:Llaq;

    invoke-static {v7, v10}, Lldc;->n(Llbd;Llaq;)Lldc;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    iget-object v11, v0, Lcny;->j:Lldf;

    sparse-switch v1, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    goto :goto_6

    :sswitch_0
    sget-object v12, Lcny;->d:[F

    goto :goto_4

    :sswitch_1
    sget-object v12, Lcny;->c:[F

    goto :goto_4

    :sswitch_2
    sget-object v12, Lcny;->b:[F

    goto :goto_4

    :sswitch_3
    sget-object v12, Lcny;->a:[F

    :goto_4
    invoke-virtual {v11, v8, v10, v12}, Lldf;->f(Llcd;Lldc;[F)V

    invoke-virtual {v10, v9}, Lldc;->i(Llfb;)V

    invoke-static {v7}, Lktf;->u(Llbd;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v10}, Llbk;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    invoke-virtual {v8}, Llbk;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-virtual {v6}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :goto_5
    :try_start_e
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    :try_start_f
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    goto :goto_c

    :goto_6
    :try_start_11
    const-string v7, "Unsupported rotation."

    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catchall_0
    move-exception v4

    :try_start_12
    invoke-virtual {v10}, Llbk;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v7

    :try_start_13
    invoke-static {v4, v7}, Ldgx;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v4

    :try_start_14
    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception v4

    :try_start_15
    invoke-virtual {v8}, Llbk;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v7

    :try_start_16
    invoke-static {v4, v7}, Ldgx;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw v4
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v4

    :try_start_17
    invoke-virtual {v6}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v6

    :try_start_18
    invoke-static {v4, v6}, Ldgx;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    :catchall_7
    move-exception v4

    :try_start_19
    monitor-exit v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :catchall_8
    move-exception v4

    :try_start_1b
    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v5

    :try_start_1c
    invoke-static {v4, v5}, Ldgx;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a
    throw v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    :catchall_a
    move-exception v4

    :try_start_1d
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v3

    :try_start_1e
    invoke-static {v4, v3}, Ldgx;->g(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_b
    throw v4
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    :catch_0
    move-exception v3

    :try_start_1f
    sget-object v4, Lcny;->e:Lnak;

    invoke-virtual {v4}, Lnaf;->b()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    invoke-interface {v4, v3}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const/16 v4, 0x162

    invoke-interface {v3, v4}, Lnah;->G(I)Lnaz;

    move-result-object v3

    check-cast v3, Lnah;

    const-string v4, "Failed to create bitmap."

    invoke-interface {v3, v4}, Lnah;->o(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    sget-object v4, Lmpx;->a:Lmpx;

    :goto_c
    invoke-virtual {v0}, Lcny;->a()V

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    goto :goto_d

    :cond_7
    iget-object v0, v0, Lcny;->k:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    :try_start_20
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    sget-object v1, Lcny;->e:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Error: Unable to compress lossless variant!"

    const/16 v3, 0x163

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    :goto_d
    return-object v0

    :catchall_c
    move-exception v0

    :try_start_21
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    goto :goto_f

    :goto_e
    throw v0

    :goto_f
    goto :goto_e

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method
