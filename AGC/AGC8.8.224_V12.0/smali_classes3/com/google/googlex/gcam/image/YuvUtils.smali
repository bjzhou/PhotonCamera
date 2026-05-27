.class public final Lcom/google/googlex/gcam/image/YuvUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/googlex/gcam/YuvReadView;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)Z
    .locals 8

    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvReadView;->a:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    invoke-static {p1}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v6

    if-eqz v5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v5, "src view is null"

    invoke-static {p1, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long p1, v6, v3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p1, "dst view is null"

    invoke-static {p0, p1}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-static {v0, v1, v6, v7}, Lcom/google/googlex/gcam/image/YuvUtils;->yuvToRgbImpl(JJ)Z

    move-result p0

    return p0
.end method

.method public static native rgbToYuvImpl(JJ)Z
.end method

.method private static native yuvToRgbImpl(JJ)Z
.end method
