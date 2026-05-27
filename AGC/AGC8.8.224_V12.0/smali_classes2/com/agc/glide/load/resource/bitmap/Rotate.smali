.class public Lcom/agc/glide/load/resource/bitmap/Rotate;
.super Lcom/agc/glide/load/resource/bitmap/BitmapTransformation;
.source "SourceFile"


# static fields
.field private static final ID:Ljava/lang/String; = "com.agc.glide.load.resource.bitmap.Rotate"

.field private static final ID_BYTES:[B


# instance fields
.field private final degreesToRotate:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/agc/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.agc.glide.load.resource.bitmap.Rotate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/agc/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    iput p1, p0, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/agc/glide/load/resource/bitmap/Rotate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/resource/bitmap/Rotate;

    iget v0, p0, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    iget p1, p1, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {v0}, Lcom/agc/glide/util/Util;->hashCode(I)I

    move-result v0

    const v1, 0x50bffd1b

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method public transform(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0

    iget p1, p0, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {p2, p1}, Lcom/agc/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/agc/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
