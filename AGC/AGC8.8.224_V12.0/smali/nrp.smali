.class public final Lnrp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;


# instance fields
.field public a:Lcom/google/googlex/gcam/InterleavedImageU16;

.field public b:Z

.field private c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnrp;->b:Z

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    return-void
.end method


# virtual methods
.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    iget-object v0, p0, Lnrp;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "allocate() should be called at most once."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/googlex/gcam/InterleavedImageU16;

    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU16__SWIG_1(III)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>(J)V

    iput-object v0, p0, Lnrp;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

    new-instance p1, Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    iget-wide p2, v0, Lcom/google/googlex/gcam/InterleavedImageU16;->a:J

    invoke-static {p2, p3, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU16_write_view(JLcom/google/googlex/gcam/InterleavedImageU16;)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/googlex/gcam/InterleavedWriteViewU16;-><init>(J)V

    iput-object p1, p0, Lnrp;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    iget-object p2, p0, Lnrp;->c:Lcom/google/googlex/gcam/InterleavedWriteViewU16;

    const-wide/16 v0, 0x0

    if-nez p2, :cond_1

    move-wide p2, v0

    goto :goto_1

    :cond_1
    iget-wide p2, p2, Lcom/google/googlex/gcam/InterleavedWriteViewU16;->a:J

    :goto_1
    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    return-object p1
.end method

.method public final doneWriting(J)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lmoz;->e(Z)V

    iget-object p1, p0, Lnrp;->a:Lcom/google/googlex/gcam/InterleavedImageU16;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    const-string p1, "doneWriting() was called before allocate()."

    invoke-static {v2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean p1, p0, Lnrp;->b:Z

    xor-int/2addr p1, v3

    const-string p2, "doneWriting() should be called at most once."

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-boolean v3, p0, Lnrp;->b:Z

    return-void
.end method
