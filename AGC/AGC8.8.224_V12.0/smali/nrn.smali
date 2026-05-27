.class public final Lnrn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;


# static fields
.field private static final c:Landroid/graphics/Bitmap$Config;


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Lnqu;

.field private final d:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lnrn;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidAllocationId_get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iput-object p1, p0, Lnrn;->d:Landroid/util/DisplayMetrics;

    return-void
.end method


# virtual methods
.method public final allocate(III)Lcom/google/googlex/gcam/base/LongPair;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p3, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Server requested an InterleavedImageU8 of %s channels, but UniqueBitmapClientAllocator only supports %s."

    invoke-static {v3, v4, p3, v2}, Lmoz;->k(ZLjava/lang/String;II)V

    iget-object p3, p0, Lnrn;->a:Landroid/graphics/Bitmap;

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string p3, "allocate() should be called at most once."

    invoke-static {v0, p3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p3, p0, Lnrn;->d:Landroid/util/DisplayMetrics;

    sget-object v0, Lnrn;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lnrn;->a:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lnqu;->a(Landroid/graphics/Bitmap;)Lnqu;

    move-result-object p1

    iput-object p1, p0, Lnrn;->b:Lnqu;

    new-instance p1, Lcom/google/googlex/gcam/base/LongPair;

    iget-object p2, p0, Lnrn;->b:Lnqu;

    iget-object p2, p2, Lnqu;->a:Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    invoke-static {p2}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/googlex/gcam/base/LongPair;-><init>(JJ)V

    return-object p1
.end method

.method public final doneWriting(J)V
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lmoz;->e(Z)V

    iget-object p1, p0, Lnrn;->a:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string p2, "doneWriting() was called before allocate()."

    invoke-static {p1, p2}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p1, p0, Lnrn;->b:Lnqu;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const-string p1, "doneWriting() was called more than once."

    invoke-static {v2, p1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object p1, p0, Lnrn;->b:Lnqu;

    invoke-virtual {p1}, Lnqu;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lnrn;->b:Lnqu;

    return-void
.end method
