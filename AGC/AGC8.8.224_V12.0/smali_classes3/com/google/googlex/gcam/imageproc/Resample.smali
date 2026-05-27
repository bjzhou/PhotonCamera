.class public final Lcom/google/googlex/gcam/imageproc/Resample;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lnqp;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    invoke-static {p2}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v6

    if-eqz v5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v5, "src is null"

    invoke-static {p2, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long p2, v6, v3

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p2, "dst is null"

    invoke-static {p0, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget p0, p1, Lnqp;->j:I

    invoke-static {v0, v1, p0, v6, v7}, Lcom/google/googlex/gcam/imageproc/Resample;->rotateInterleavedU8Impl(JIJ)Z

    return-void
.end method

.method public static b(Lcom/google/googlex/gcam/YuvReadView;Lnqp;Lcom/google/googlex/gcam/YuvWriteView;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    invoke-static {p2}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v6

    if-eqz v5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v5, "src is null"

    invoke-static {p2, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long p2, v6, v3

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p2, "dst is null"

    invoke-static {p0, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    iget p0, p1, Lnqp;->j:I

    invoke-static {v0, v1, p0, v6, v7}, Lcom/google/googlex/gcam/imageproc/Resample;->rotateYuvImpl(JIJ)Z

    return-void
.end method

.method public static native downsampleImpl(JIJ)Z
.end method

.method public static native resampleLanczosYuvImpl(JFJ)Z
.end method

.method private static native rotateInterleavedU8Impl(JIJ)Z
.end method

.method private static native rotateYuvImpl(JIJ)Z
.end method

.method private static native rotatedSizeImpl(III)[I
.end method
