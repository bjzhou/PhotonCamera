.class public final Lnrs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/YuvClientAllocator;


# instance fields
.field private a:Lcom/google/googlex/gcam/YuvImage;

.field private b:Lcom/google/googlex/gcam/YuvWriteView;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnrs;->c:Z

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
.method public final a()Lcom/google/googlex/gcam/YuvImage;
    .locals 2

    iget-boolean v0, p0, Lnrs;->c:Z

    const-string v1, "doneWriting() must be called before getImage."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lnrs;->a:Lcom/google/googlex/gcam/YuvImage;

    return-object v0
.end method

.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 2

    iget-object v0, p0, Lnrs;->a:Lcom/google/googlex/gcam/YuvImage;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "allocate() should be called at most once."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/googlex/gcam/YuvImage;

    invoke-static {p3}, Lnrj;->a(I)Lnrj;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lcom/google/googlex/gcam/YuvImage;-><init>(IILnrj;)V

    iput-object v0, p0, Lnrs;->a:Lcom/google/googlex/gcam/YuvImage;

    invoke-static {v0}, Lnsy;->g(Lcom/google/googlex/gcam/YuvImage;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object p1

    iput-object p1, p0, Lnrs;->b:Lcom/google/googlex/gcam/YuvWriteView;

    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    iget-object p2, p0, Lnrs;->b:Lcom/google/googlex/gcam/YuvWriteView;

    invoke-static {p2}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

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

    iget-object p1, p0, Lnrs;->a:Lcom/google/googlex/gcam/YuvImage;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    const-string p1, "doneWriting() was called before allocate()."

    invoke-static {v2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean p1, p0, Lnrs;->c:Z

    xor-int/2addr p1, v3

    const-string p2, "doneWriting() should be called at most once."

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-boolean v3, p0, Lnrs;->c:Z

    return-void
.end method
