.class final Lhdb;
.super Ljava/lang/Object;

# interfaces
.implements Lfsd;


# instance fields
.field final synthetic a:Lkpb;

.field final synthetic b:Lhdw;


# direct methods
.method public constructor <init>(Lkpb;Lhdw;)V
    .locals 0

    iput-object p1, p0, Lhdb;->a:Lkpb;

    iput-object p2, p0, Lhdb;->b:Lhdw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/RuntimeException;)V
    .locals 3

    sget-object v0, Lhdc;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "HDR processing failed:"

    const/16 v2, 0xd8f

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Lhdb;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    iget-object p1, p0, Lhdb;->b:Lhdw;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhdw;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 10

    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/gcam/ShotMetadata;->e()Lnqp;

    move-result-object p2

    invoke-static {p2}, Lnsy;->h(Lnqp;)I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    int-to-float p2, p2

    invoke-virtual {v8, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lhdb;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    iget-object p1, p0, Lhdb;->b:Lhdw;

    invoke-interface {p1, v0}, Lhdw;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final c(Lcom/google/googlex/gcam/YuvImage;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 1

    sget-object p1, Lhdc;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const/16 p2, 0xd94

    const-string v0, "Got unexpected YUV buffer."

    invoke-static {p1, v0, p2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object p1, p0, Lhdb;->a:Lkpb;

    invoke-interface {p1}, Lkpb;->close()V

    iget-object p1, p0, Lhdb;->b:Lhdw;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lhdw;->a(Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lhdb;->b:Lhdw;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lhdw;->a(Landroid/graphics/Bitmap;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Got unexpected YUV HardwareBuffer."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
