.class public final synthetic Llip;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llir;

.field public final synthetic b:Lprw;

.field public final synthetic c:Linb;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Llir;Lprw;Linb;J)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Llip;->c:Linb;

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

    :goto_2
    iput-wide p4, p0, Llip;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Llip;->a:Llir;

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

    nop

    :goto_4
    iput-object p2, p0, Llip;->b:Lprw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 20

    goto/32 :goto_5

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, v0, Llip;->c:Linb;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, v0, Llip;->b:Lprw;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {v5}, Lprw;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :goto_4
    :try_start_1
    invoke-virtual {v6}, Lliq;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

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

    :goto_6
    goto/16 :goto_21

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v2, v0

    nop

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_22

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    move-object v3, v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    goto :goto_8

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v2, v1, Llir;->a:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    goto/32 :goto_2b

    nop

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    invoke-interface {v2}, Lpdf;->g()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    move-object v3, v0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-virtual {v6}, Lliq;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_2c

    nop

    nop

    :goto_15
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :catchall_5
    move-exception v0

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

    nop

    :goto_17
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_18
    iget-object v1, v0, Llip;->a:Llir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v2}, Lprw;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v1, Llir;->a:Lpdf;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v4, v0, Llip;->d:J

    nop

    :try_start_5
    iget-object v0, v1, Llir;->a:Lpdf;

    nop

    nop

    nop

    nop

    const-string v6, "ThumbnailProcessor#processBaseFrameImage"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v6}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v3}, Linb;->a()I

    invoke-virtual {v1, v3}, Llir;->j(Linb;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :try_start_6
    iget-object v0, v1, Llir;->e:Ljava/util/Map;

    nop

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    nop

    check-cast v6, Lliq;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    iget-object v0, v6, Lliq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    move-object v5, v0

    nop

    check-cast v5, Lprw;

    nop

    iget-object v0, v6, Lliq;->a:Ljava/lang/Object;

    nop

    nop

    new-instance v7, Llin;

    nop

    nop

    nop

    nop

    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8}, Llin;-><init>(I)V

    invoke-static {v0, v7}, Lj$/util/Map$-EL;->forEach(Ljava/util/Map;Ljava/util/function/BiConsumer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    iget-object v0, v6, Lliq;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v7, v3, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v7, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    nop

    const/4 v7, -0x1

    nop

    if-eq v4, v7, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v3, Linb;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lpro;

    nop

    nop

    invoke-static {v4}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    goto :goto_1c

    nop

    nop

    nop

    :cond_2
    sget-object v4, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4}, Lrss;->f()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lpro;

    nop

    check-cast v0, Lllp;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v4, v5, v2}, Lllp;->a(Lprw;Lpro;Lprw;Lprw;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v1, Llir;->a:Lpdf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw v3

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    move-object v4, v0

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v3

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_b
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    throw v0

    nop

    nop

    nop

    :cond_3
    :goto_22
    iget-object v0, v1, Llir;->a:Lpdf;

    nop

    const-string v4, "convert"

    nop

    invoke-interface {v0, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v0, v3, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkmq;

    nop

    nop

    iget v0, v0, Lkmq;->a:I

    nop

    iget-object v4, v1, Llir;->b:Lnpq;

    nop

    nop

    nop

    nop

    iget-object v5, v1, Llir;->f:Lkog;

    nop

    nop

    iget-object v6, v1, Llir;->c:Loyd;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Llir;->g:Lhoh;

    nop

    nop

    nop

    nop

    invoke-static {v0, v4, v5, v6, v7}, Lfxj;->d(ILnpq;Lpnu;Loyd;Lhoh;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v1, Llir;->h:Lnpr;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Llir;->f:Lkog;

    nop

    nop

    invoke-virtual {v5}, Lpoh;->l()Lpog;

    move-result-object v5

    nop

    nop

    invoke-virtual {v4, v5}, Lnpr;->m(Lpog;)Z

    move-result v4

    nop

    nop

    iget-object v5, v1, Llir;->g:Lhoh;

    nop

    nop

    sget-object v6, Lhmq;->bZ:Lhmn;

    nop

    nop

    invoke-virtual {v5, v6}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    if-eqz v5, :cond_9

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    if-eq v5, v4, :cond_4

    nop

    nop

    nop

    nop

    move v6, v15

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    :cond_4
    move v6, v0

    nop

    nop

    nop

    :goto_23
    invoke-interface {v2}, Lprw;->a()I

    move-result v7

    nop

    nop

    const/16 v8, 0x23

    nop

    nop

    if-ne v7, v8, :cond_5

    nop

    nop

    move v7, v5

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_5
    move v7, v15

    nop

    nop

    nop

    nop

    :goto_24
    const-string v8, "Source image must be YUV_420_888 format."

    nop

    nop

    nop

    invoke-static {v7, v8}, Lrrf;->m(ZLjava/lang/Object;)V

    invoke-interface {v2}, Lprw;->c()I

    move-result v14

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->b()I

    move-result v16

    nop

    nop

    nop

    const/16 v7, 0x5a

    nop

    nop

    nop

    if-eq v6, v7, :cond_7

    nop

    nop

    nop

    const/16 v7, 0x10e

    nop

    nop

    if-ne v6, v7, :cond_6

    nop

    move/from16 v18, v7

    nop

    nop

    goto :goto_25

    nop

    nop

    :cond_6
    move/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    move v6, v14

    nop

    nop

    nop

    move/from16 v7, v16

    nop

    nop

    nop

    goto :goto_26

    nop

    :cond_7
    move/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move v7, v14

    nop

    nop

    nop

    move/from16 v6, v16

    nop

    :goto_26
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lprw;->g()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lprv;

    nop

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lprv;

    nop

    nop

    const/4 v8, 0x2

    nop

    nop

    nop

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lprv;

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v7}, Lprv;->getRowStride()I

    move-result v7

    nop

    invoke-interface {v5}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    nop

    nop

    nop

    invoke-interface {v5}, Lprv;->getRowStride()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    nop

    nop

    nop

    invoke-interface {v6}, Lprv;->getRowStride()I

    move-result v11

    nop

    nop

    invoke-interface {v6}, Lprv;->getPixelStride()I

    move-result v12

    nop

    nop

    nop

    move-object v6, v8

    nop

    nop

    move-object v8, v9

    nop

    move v9, v5

    nop

    nop

    nop

    move-object/from16 v13, v19

    nop

    nop

    nop

    nop

    nop

    move v5, v15

    nop

    nop

    nop

    nop

    move/from16 v15, v16

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v18

    nop

    nop

    nop

    move/from16 v17, v4

    nop

    invoke-static/range {v6 .. v17}, Lcom/google/android/apps/camera/jni/libyuv/LibyuvJni;->nativeYUV420ToBitmap(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IILandroid/graphics/Bitmap;IIIZ)I

    move-result v4

    nop

    nop

    if-gez v4, :cond_8

    nop

    nop

    sget-object v6, Liyt;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v7, 0x7e4

    nop

    nop

    invoke-interface {v6, v7}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    const-string v7, "Failed to convert image proxy to bitmap: %d"

    nop

    nop

    invoke-interface {v6, v7, v4}, Lscz;->t(Ljava/lang/String;I)V

    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    :cond_8
    if-nez v18, :cond_a

    nop

    goto :goto_27

    nop

    nop

    :cond_9
    move v5, v15

    nop

    nop

    nop

    nop

    invoke-static {v0, v4}, Lppo;->a(IZ)Lppo;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v2, v0}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->a(Lprw;Lppo;)Landroid/graphics/Bitmap;

    move-result-object v19

    nop

    :cond_a
    move v0, v5

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v4, v19

    nop

    nop

    nop

    iget-object v5, v1, Llir;->a:Lpdf;

    nop

    const-string v6, "updateIndicator"

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {v3}, Linb;->a()I

    iget-object v3, v3, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v4, v0}, Llxa;->ac(Landroid/graphics/Bitmap;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    invoke-interface {v2}, Lprw;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    throw v0

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    iget-object v0, v1, Llir;->a:Lpdf;

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

    :goto_2d
    if-nez v5, :cond_b

    nop

    goto/32 :goto_1f

    nop

    :cond_b
    :try_start_e
    invoke-interface {v5}, Lprw;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method
