.class public final Lcom/google/googlex/gcam/imageio/JpgHelper;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/InterleavedReadViewU8;Lcom/google/googlex/gcam/JpgEncodeOptions;I)Lmqp;
    .locals 9

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedReadViewU8;->a:J

    iget-wide v2, p1, Lcom/google/googlex/gcam/JpgEncodeOptions;->a:J

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    move v4, p2

    move v5, v7

    move v6, v7

    invoke-static/range {v0 .. v8}, Lcom/google/googlex/gcam/imageio/JpgHelper;->encodeRgbToJpegAsByteArrayImpl(JJIFFFI)[B

    move-result-object p0

    invoke-static {p0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p0

    return-object p0
.end method

.method public static native encodeRgbToJpegAsByteArrayImpl(JJIFFFI)[B
.end method

.method public static native encodeYuvToJpegAsByteArrayImpl(JJIFFFI)[B
.end method
