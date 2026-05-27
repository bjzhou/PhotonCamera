.class public final Lnrr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/RawClientAllocator;


# instance fields
.field public a:Lnrc;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnrr;->b:Z

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
    .locals 5

    iget-object v0, p0, Lnrr;->a:Lnrc;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "allocate() should be called at most once."

    invoke-static {v0, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v0, Lnrc;

    sget-object v2, Lnrb;->e:[Lnrb;

    const/4 v3, 0x4

    if-ge p3, v3, :cond_2

    if-ltz p3, :cond_2

    aget-object v2, v2, p3

    iget v4, v2, Lnrb;->f:I

    if-ne v4, p3, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    :goto_1
    sget-object v2, Lnrb;->e:[Lnrb;

    if-ge v1, v3, :cond_4

    aget-object v2, v2, v1

    iget v4, v2, Lnrb;->f:I

    if-ne v4, p3, :cond_3

    :goto_2
    iget p3, v2, Lnrb;->f:I

    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_RawImage__SWIG_1(III)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lnrc;-><init>(J)V

    iput-object v0, p0, Lnrr;->a:Lnrc;

    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    iget-object p2, p0, Lnrr;->a:Lnrc;

    invoke-static {p2}, Lcom/google/googlex/gcam/RawWriteView;->c(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    return-object p1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-class p1, Lnrb;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No enum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with value "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p2

    :goto_4
    goto :goto_3
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

    iget-object p1, p0, Lnrr;->a:Lnrc;

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    const-string p1, "doneWriting() was called before allocate()."

    invoke-static {v2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean p1, p0, Lnrr;->b:Z

    xor-int/2addr p1, v3

    const-string p2, "doneWriting() should be called at most once."

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-boolean v3, p0, Lnrr;->b:Z

    return-void
.end method
