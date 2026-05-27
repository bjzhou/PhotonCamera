.class public Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;

    const-string v1, "jpeg-jni"

    invoke-static {v0, v1}, Lkak;->b(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkpb;Ljava/nio/ByteBuffer;Landroid/graphics/Rect;Lkab;)I
    .locals 29

    move-object/from16 v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    const-string v4, "Output buffer must be direct"

    invoke-static {v3, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Invalid crop rectangle: %s"

    invoke-static {v3, v4, v0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3, v4, v0}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface/range {p0 .. p0}, Lkpb;->a()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-interface/range {p0 .. p0}, Lkpb;->a()I

    move-result v4

    const-string v7, "Only ImageFormat.YUV_420_888 is supported, found %s"

    invoke-static {v3, v7, v4}, Lmoz;->r(ZLjava/lang/String;I)V

    invoke-interface/range {p0 .. p0}, Lkpb;->g()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkpa;

    const/4 v8, 0x2

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    invoke-static {v9}, Lmoz;->p(Z)V

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    invoke-static {v9}, Lmoz;->p(Z)V

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v9

    invoke-static {v9}, Lmoz;->p(Z)V

    invoke-interface {v4}, Lkpa;->getPixelStride()I

    move-result v9

    if-ne v9, v5, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    const-string v10, "Pixel stride for luma (Y) plane must be 1."

    invoke-static {v9, v10}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v9

    if-ne v9, v8, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    const-string v10, "Pixel stride for chroma (U) plane must be 2."

    invoke-static {v9, v10}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v9

    if-ne v9, v8, :cond_5

    const/4 v9, 0x1

    goto :goto_5

    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-string v10, "Pixel stride for chroma (V) plane must be 2."

    invoke-static {v9, v10}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v9

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v10

    if-ne v9, v10, :cond_6

    const/4 v9, 0x1

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const-string v10, "Row strides for chroma planes (UV) must match."

    invoke-static {v9, v10}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-interface/range {p0 .. p0}, Lkpb;->c()I

    move-result v9

    move v11, v9

    add-int/lit8 v10, v9, -0x1

    invoke-interface/range {p0 .. p0}, Lkpb;->b()I

    move-result v13

    move v12, v13

    iget v14, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v14, v6, v10}, Lnsy;->O(III)I

    move-result v24

    iget v10, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v6, v9}, Lnsy;->O(III)I

    move-result v26

    add-int/lit8 v9, v13, -0x1

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v10, v6, v9}, Lnsy;->O(III)I

    move-result v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v6, v13}, Lnsy;->O(III)I

    move-result v27

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface {v4}, Lkpa;->getPixelStride()I

    move-result v14

    invoke-interface {v4}, Lkpa;->getRowStride()I

    move-result v15

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v17

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v18

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v20

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v21

    const/16 v23, 0x5f

    const-string v0, "JpegUtilNative"

    invoke-static {v0}, Lcom/agc/AdvancedSettings;->getJPGQuality(Ljava/lang/String;)I

    move-result v23

    move-object/from16 v0, p3

    iget v0, v0, Lkab;->e:I

    move/from16 v28, v0

    move-object/from16 v22, p1

    invoke-static/range {v11 .. v28}, Lcom/google/android/libraries/camera/jni/jpeg/JpegUtilNative;->compressJpegFromYUV420spNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIII)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    if-ge v0, v3, :cond_7

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_7
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v6, v1

    long-to-double v1, v6

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    const-string v1, "Compressed %d bytes in %.2fms"

    invoke-static {v3, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method

.method private static native compressJpegFromYUV420spNative(IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IILjava/lang/Object;IIIIII)I
.end method
