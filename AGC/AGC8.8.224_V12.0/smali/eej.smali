.class public final Leej;
.super Ljava/lang/Object;

# interfaces
.implements Lkpb;


# instance fields
.field public final a:J

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/googlex/gcam/YuvReadView;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/YuvImage;J)V
    .locals 0

    invoke-static {p1}, Lnsy;->e(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Leej;-><init>(Lcom/google/googlex/gcam/YuvReadView;J)V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvReadView;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->a()Lnrj;

    move-result-object v2

    sget-object v3, Lnrj;->b:Lnrj;

    if-eq v2, v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->a()Lnrj;

    move-result-object v2

    sget-object v3, Lnrj;->c:Lnrj;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const-string v3, "Format of yuvReadView can only be NV12 or NV21!"

    invoke-static {v2, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v2, Lcom/google/googlex/gcam/GrayReadViewU8;

    iget-wide v6, v1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    invoke-static {v6, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_luma(JLcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v6

    invoke-direct {v2, v6, v7}, Lcom/google/googlex/gcam/GrayReadViewU8;-><init>(J)V

    new-instance v3, Lcom/google/googlex/gcam/InterleavedReadViewU8;

    iget-wide v6, v1, Lcom/google/googlex/gcam/YuvReadView;->a:J

    invoke-static {v6, v7, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_chroma(JLcom/google/googlex/gcam/YuvReadView;)J

    move-result-wide v6

    invoke-direct {v3, v6, v7}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(J)V

    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->a()I

    move-result v6

    iget-wide v7, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    invoke-static {v7, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_width(JLcom/google/googlex/gcam/GrayReadViewU8;)I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int v6, v6, v7

    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->b()I

    move-result v7

    iget-wide v8, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    invoke-static {v8, v9, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_height(JLcom/google/googlex/gcam/GrayReadViewU8;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int v7, v7, v8

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->d()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int v8, v8, v9

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v9

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->c()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    mul-int v9, v9, v10

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v10

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->b()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int v10, v10, v11

    iget-wide v11, v2, Lcom/google/googlex/gcam/GrayReadViewU8;->a:J

    invoke-static {v11, v12, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GrayReadViewU8_data(JLcom/google/googlex/gcam/GrayReadViewU8;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_2

    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    new-instance v13, Lnrf;

    invoke-direct {v13, v11, v12}, Lnrf;-><init>(J)V

    move-object v11, v13

    :goto_1
    int-to-long v12, v8

    int-to-long v8, v9

    int-to-long v14, v6

    int-to-long v4, v10

    int-to-long v6, v7

    invoke-static {v11}, Lnrf;->a(Lnrf;)J

    move-result-wide v10

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    add-long/2addr v14, v6

    long-to-int v6, v14

    invoke-static {v10, v11, v6}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/gcam/YuvReadView;->a()Lnrj;

    move-result-object v7

    add-long v12, v12, v16

    add-long/2addr v12, v8

    add-long/2addr v12, v4

    long-to-int v4, v12

    sget-object v5, Lnrj;->b:Lnrj;

    if-ne v7, v5, :cond_3

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lnrf;

    move-result-object v5

    invoke-static {v5}, Lnrf;->a(Lnrf;)J

    move-result-wide v7

    invoke-static {v7, v8, v4}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lnrf;

    move-result-object v7

    invoke-static {v7}, Lnrf;->a(Lnrf;)J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8, v4}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lnrf;

    move-result-object v5

    invoke-static {v5}, Lnrf;->a(Lnrf;)J

    move-result-wide v7

    invoke-static {v7, v8, v4}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->g()Lnrf;

    move-result-object v7

    invoke-static {v7}, Lnrf;->a(Lnrf;)J

    move-result-wide v7

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8, v4}, Lcom/google/googlex/gcam/BufferUtils;->b(JI)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object/from16 v18, v5

    move-object v5, v4

    move-object/from16 v4, v18

    :goto_2
    move-wide/from16 v7, p2

    iput-wide v7, v0, Leej;->a:J

    iput-object v1, v0, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    const/4 v1, 0x3

    new-array v1, v1, [Lkpa;

    new-instance v7, Lkkv;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->b()I

    move-result v8

    invoke-virtual {v2}, Lcom/google/googlex/gcam/GrayReadViewU8;->a()I

    move-result v2

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v2, v9}, Lkkv;-><init>(Ljava/nio/ByteBuffer;III)V

    const/4 v2, 0x0

    aput-object v7, v1, v2

    new-instance v2, Lkkv;

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v7

    invoke-direct {v2, v5, v6, v7, v9}, Lkkv;-><init>(Ljava/nio/ByteBuffer;III)V

    aput-object v2, v1, v9

    new-instance v2, Lkkv;

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->f()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/googlex/gcam/InterleavedReadViewU8;->e()I

    move-result v3

    invoke-direct {v2, v4, v5, v3, v9}, Lkkv;-><init>(Ljava/nio/ByteBuffer;III)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Leej;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/YuvWriteView;J)V
    .locals 0

    invoke-static {p1}, Lnsy;->f(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Leej;-><init>(Lcom/google/googlex/gcam/YuvReadView;J)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x23

    return v0
.end method

.method public final b()I
    .locals 3

    iget-object v0, p0, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    iget-wide v1, v0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_height(JLcom/google/googlex/gcam/YuvReadView;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 3

    iget-object v0, p0, Leej;->c:Lcom/google/googlex/gcam/YuvReadView;

    iget-wide v1, v0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    invoke-static {v1, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvReadView_width(JLcom/google/googlex/gcam/YuvReadView;)I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Leej;->a:J

    return-wide v0
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Leej;->c()I

    move-result v1

    invoke-virtual {p0}, Leej;->b()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final f()Landroid/hardware/HardwareBuffer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Leej;->b:Ljava/util/List;

    return-object v0
.end method

.method public final h(Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public final synthetic i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Lkgd;
    .locals 1

    invoke-static {}, Lkgd;->x()Lkgd;

    move-result-object v0

    return-object v0
.end method
