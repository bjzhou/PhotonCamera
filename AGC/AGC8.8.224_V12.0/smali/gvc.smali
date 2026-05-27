.class public final Lgvc;
.super Ljava/lang/Object;

# interfaces
.implements Lgvb;


# instance fields
.field public final a:Ldhi;

.field public final b:Ljwb;

.field private final c:Ljvs;


# direct methods
.method public constructor <init>(Ljwb;Ljvs;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lgvc;->a:Ldhi;

    iput-object p1, p0, Lgvc;->b:Ljwb;

    iput-object p2, p0, Lgvc;->c:Ljvs;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p3}, Lgvc;->h(Lklv;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lilu;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lgvc;->i(Landroid/graphics/Bitmap;ILklv;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;ILklv;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lgvc;->i(Landroid/graphics/Bitmap;ILklv;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/googlex/gcam/InterleavedImageU8;ILklv;)Lcom/google/googlex/gcam/InterleavedImageU8;
    .locals 4

    invoke-static {p2}, Lnsy;->i(I)Lnqp;

    move-result-object p2

    sget-object v0, Lnqp;->b:Lnqp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_1

    sget-object v0, Lnqp;->d:Lnqp;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sget-object v3, Lnqp;->i:Lnqp;

    if-eq p2, v3, :cond_3

    sget-object v3, Lnqp;->g:Lnqp;

    if-ne p2, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, p3}, Lgvc;->h(Lklv;)Z

    move-result p2

    if-eqz p2, :cond_6

    if-nez v0, :cond_4

    if-eqz v1, :cond_6

    :cond_4
    new-instance p2, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result p3

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->a()I

    move-result v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->e()Lcom/google/googlex/gcam/InterleavedReadViewU8;

    move-result-object p1

    if-eqz v0, :cond_5

    sget-object p3, Lnqp;->c:Lnqp;

    goto :goto_2

    :cond_5
    sget-object p3, Lnqp;->e:Lnqp;

    :goto_2
    invoke-virtual {p2}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/google/googlex/gcam/imageproc/Resample;->a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lnqp;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V

    return-object p2

    :cond_6
    return-object p1
.end method

.method public final d(Lkpb;Lkab;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static/range {p2 .. p2}, Linb;->H(Lkab;)Z

    move-result v18

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v11

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v13

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v17

    move-object v4, v10

    move v5, v11

    move-object v6, v12

    move v7, v13

    move-object v8, v14

    move v9, v15

    invoke-static/range {v4 .. v18}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->mirrorYUV420888(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final e(Lkpb;Lkpb;Lkab;)V
    .locals 19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v0

    const/16 v1, 0x23

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static/range {p3 .. p3}, Linb;->H(Lkab;)Z

    move-result v18

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v9

    move-object/from16 v0, p2

    check-cast v0, Lkkw;

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkpa;

    invoke-interface {v10}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v11

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getRowStride()I

    move-result v13

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpa;

    invoke-interface {v2}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v16

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v17

    invoke-static/range {v4 .. v18}, Lcom/google/android/apps/camera/jni/eisutil/FrameUtilNative;->mirrorYUV420888(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public final f(Lcom/google/android/libraries/camera/exif/ExifInterface;Lklv;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lgvc;->h(Lklv;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lkdi;

    invoke-virtual {v0}, Lkdi;->f()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lkdi;

    iget-object v0, v0, Lkdi;->b:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lkdi;

    invoke-virtual {v0}, Lkdi;->g()Z

    :goto_0
    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v2, p3, p2, v1}, Lgvc;->i(Landroid/graphics/Bitmap;ILklv;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance p3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "gvc"

    invoke-static {v1}, Lcom/agc/AdvancedSettings;->getJPGQuality(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v0, v1, p3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p2

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iget-object p3, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lkdi;

    invoke-virtual {p3}, Lkdi;->e()V

    iget-object p1, p1, Lcom/google/android/libraries/camera/exif/ExifInterface;->bB:Lkdi;

    iput-object p2, p1, Lkdi;->b:[B

    return-void

    :cond_4
    return-void
.end method

.method public final synthetic g(Lkab;)Z
    .locals 0

    invoke-static {p1}, Linb;->H(Lkab;)Z

    move-result p1

    return p1
.end method

.method public final h(Lklv;)Z
    .locals 3

    iget-object v0, p0, Lgvc;->a:Ldhi;

    sget-object v1, Ldho;->bm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lgvc;->b:Ljwb;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lgvc;->b:Ljwb;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lklv;->a:Lklv;

    invoke-virtual {p1, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lklv;->b:Lklv;

    invoke-virtual {p1, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lgvc;->c:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    :goto_0
    return v1
.end method

.method public final i(Landroid/graphics/Bitmap;ILklv;Z)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p1, :cond_4

    invoke-virtual {p0, p3}, Lgvc;->h(Lklv;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    sget-object p3, Lkab;->b:Lkab;

    iget p3, p3, Lkab;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p2, p3, :cond_2

    sget-object p3, Lkab;->d:Lkab;

    iget p3, p3, Lkab;->e:I

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v5, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    :goto_1
    if-eqz p4, :cond_3

    int-to-float p2, p2

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-object p1

    :cond_4
    :goto_2
    return-object p1
.end method
