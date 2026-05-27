.class public final Liol;
.super Ljava/lang/Object;

# interfaces
.implements Liot;


# instance fields
.field public final a:Ljava/util/List;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Map;

.field private final d:Lios;

.field private final e:Lkbc;

.field private f:Landroid/view/Surface;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/util/Set;Lios;Lkbc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liol;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liol;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Liol;->g:Z

    iput-object p1, p0, Liol;->b:Ljava/util/Set;

    iput-object p2, p0, Liol;->d:Lios;

    iput-object p3, p0, Liol;->e:Lkbc;

    return-void
.end method


# virtual methods
.method public final a(Lkef;Lkfj;)V
    .locals 1

    iget-object v0, p0, Liol;->d:Lios;

    invoke-interface {v0, p1, p2}, Lios;->e(Lkef;Lkfj;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Liol;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Liol;->d:Lios;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Liol;->b:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lamx;->m:Lamx;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lior;

    iget-object v6, v5, Lior;->b:Ljvs;

    invoke-interface {v6}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Liol;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Liol;->d:Lios;

    iget-object v7, v5, Lior;->a:Lioq;

    invoke-interface {v7, v6}, Lioq;->a(Lios;)Lioo;

    move-result-object v6

    iget-object v7, p0, Liol;->c:Ljava/util/Map;

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v6, p0, Liol;->c:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lioo;

    :goto_1
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0, v2}, Lios;->h(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized c(Landroid/view/Surface;ILandroid/util/Size;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const-string v1, "Surface is invalid: ignoring set filter output"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Liol;->f:Landroid/view/Surface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Liol;->e:Lkbc;

    const-string v2, "setSurfaceGeometry"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/apps/camera/jni/surface/SurfaceNative;->setSurfaceGeometry(Landroid/view/Surface;III)I

    move-result p2

    if-eqz p2, :cond_1

    sget-object v1, Liom;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x1106

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Failed to setSurfaceGeometry: %d"

    invoke-interface {v1, v2, p2}, Lnah;->p(Ljava/lang/String;I)V

    :cond_1
    iget-object p2, p0, Liol;->e:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    iput-object p1, p0, Liol;->f:Landroid/view/Surface;

    iget-object p2, p0, Liol;->d:Lios;

    invoke-interface {p2, p1, p3}, Lios;->g(Landroid/view/Surface;Landroid/util/Size;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Liol;->g:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "ViewfinderFilter is closed already"

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Liol;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Liol;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkad;

    invoke-interface {v1}, Lkad;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liol;->d:Lios;

    invoke-interface {v0}, Lios;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final d(II)Lmqp;
    .locals 20

    move-object/from16 v1, p0

    iget-object v2, v1, Liol;->d:Lios;

    monitor-enter v2

    :try_start_0
    move-object v0, v2

    check-cast v0, Liok;

    iget-boolean v0, v0, Liok;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x10fb

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "cannot take screenshot after viewfinder effects pipeline is closed"

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    sget-object v0, Lmpx;->a:Lmpx;

    monitor-exit v2

    goto/16 :goto_4

    :cond_0
    move-object v0, v2

    check-cast v0, Liok;

    iget-object v0, v0, Liok;->i:Lkeb;

    if-nez v0, :cond_1

    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x10fa

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v3, "no frame found to save as screenshot"

    invoke-interface {v0, v3}, Lnah;->o(Ljava/lang/String;)V

    sget-object v0, Lmpx;->a:Lmpx;

    monitor-exit v2

    goto/16 :goto_4

    :cond_1
    move-object v3, v2

    check-cast v3, Liok;

    iget-object v3, v3, Liok;->h:Lkfj;

    invoke-interface {v0, v3}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-nez v3, :cond_2

    :try_start_1
    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v4, 0x10f9

    invoke-interface {v0, v4}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v4, "can\'t save screenshot as frame has no associated YUV image"

    invoke-interface {v0, v4}, Lnah;->o(Ljava/lang/String;)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    goto/16 :goto_4

    :cond_2
    :try_start_3
    invoke-interface {v3}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    if-nez v4, :cond_3

    :try_start_4
    sget-object v0, Liok;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v5, 0x10f8

    invoke-interface {v0, v5}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v5, "can\'t save screenshot as YUV image has no associated HardwareBuffer"

    invoke-interface {v0, v5}, Lnah;->o(Ljava/lang/String;)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    goto :goto_0

    :cond_3
    :try_start_6
    move-object v0, v2

    check-cast v0, Liok;

    iget-object v0, v0, Liok;->g:Lklv;

    sget-object v5, Lklv;->a:Lklv;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v5, :cond_5

    move-object v0, v2

    check-cast v0, Liok;

    iget-object v0, v0, Liok;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v5, p1

    move/from16 v8, p2

    invoke-static {v5, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v5, v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    move-object v8, v2

    check-cast v8, Liok;

    iget-object v8, v8, Liok;->c:Llbd;

    invoke-static {v8, v5}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    invoke-static {v0}, Llfd;->a(Landroid/graphics/Bitmap;)Llfb;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    move-object v10, v2

    check-cast v10, Liok;

    invoke-virtual {v10}, Liok;->b()Llbd;

    move-result-object v10

    move-object v11, v9

    check-cast v11, Llfc;

    iget-object v11, v11, Llfc;->a:Llaq;

    invoke-static {v10, v11}, Lldc;->n(Llbd;Llaq;)Lldc;

    move-result-object v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    move-object v11, v2

    check-cast v11, Liok;

    invoke-virtual {v11}, Liok;->b()Llbd;

    move-result-object v11

    invoke-static {v11}, Lldf;->a(Llbd;)Lldf;

    move-result-object v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    move-object v12, v2

    check-cast v12, Liok;

    invoke-virtual {v12}, Liok;->a()I

    move-result v12

    if-eqz v6, :cond_6

    rsub-int v12, v12, 0x168

    rem-int/lit16 v12, v12, 0x168

    :cond_6
    const/16 v13, 0x10

    new-array v15, v13, [F

    invoke-static {v15, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v14, 0x0

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-static {v15, v7, v13, v13, v14}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v13, 0x0

    neg-int v14, v12

    int-to-float v14, v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v16, v14

    const/4 v1, 0x0

    move-object v14, v15

    move-object/from16 p2, v15

    move v15, v13

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-eqz v6, :cond_8

    rem-int/lit16 v12, v12, 0xb4

    if-nez v12, :cond_7

    const/4 v15, 0x0

    const/high16 v16, 0x43340000    # 180.0f

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_2

    :cond_7
    const/4 v15, 0x0

    const/high16 v16, 0x43340000    # 180.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v14, p2

    invoke-static/range {v14 .. v19}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_8
    :goto_2
    const/high16 v6, -0x41000000    # -0.5f

    move-object/from16 v12, p2

    invoke-static {v12, v7, v6, v6, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    :goto_3
    const/16 v1, 0x10

    if-ge v7, v1, :cond_9

    aget v6, v12, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    aput v6, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v11, v8, v10, v12}, Lldf;->f(Llcd;Lldc;[F)V

    invoke-virtual {v10, v9}, Lldc;->i(Llfb;)V

    move-object v1, v2

    check-cast v1, Liok;

    iget-object v1, v1, Liok;->c:Llbd;

    invoke-static {v1}, Lktf;->u(Llbd;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual {v11}, Lldf;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual {v10}, Llbk;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v8}, Llbk;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :try_start_f
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :try_start_10
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    :try_start_11
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    goto/16 :goto_0

    :goto_4
    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_12
    invoke-virtual {v11}, Lldf;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_13
    invoke-static {v1, v6}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_14
    invoke-virtual {v10}, Llbk;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_15
    invoke-static {v1, v6}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_17
    invoke-virtual {v8}, Llbk;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    move-object v6, v0

    :try_start_18
    invoke-static {v1, v6}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_19
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v5, v0

    :try_start_1a
    invoke-static {v1, v5}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    if-eqz v4, :cond_a

    :try_start_1b
    invoke-virtual {v4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    goto :goto_9

    :catchall_a
    move-exception v0

    move-object v4, v0

    :try_start_1c
    invoke-static {v1, v4}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_a
    :goto_9
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :catchall_b
    move-exception v0

    move-object v1, v0

    if-eqz v3, :cond_b

    :try_start_1d
    invoke-interface {v3}, Lkpb;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    goto :goto_a

    :catchall_c
    move-exception v0

    move-object v3, v0

    :try_start_1e
    invoke-static {v1, v3}, Ljyx;->l(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_b
    :goto_a
    throw v1

    :catchall_d
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b
.end method
