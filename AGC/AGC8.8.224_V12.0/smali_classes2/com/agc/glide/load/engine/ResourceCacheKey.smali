.class final Lcom/agc/glide/load/engine/ResourceCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Key;


# static fields
.field private static final RESOURCE_CLASS_BYTES:Lcom/agc/glide/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/util/LruCache<",
            "Ljava/lang/Class<",
            "*>;[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final decodedResourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final height:I

.field private final options:Lcom/agc/glide/load/Options;

.field private final signature:Lcom/agc/glide/load/Key;

.field private final sourceKey:Lcom/agc/glide/load/Key;

.field private final transformation:Lcom/agc/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Transformation<",
            "*>;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/agc/glide/util/LruCache;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/util/LruCache;-><init>(J)V

    sput-object v0, Lcom/agc/glide/load/engine/ResourceCacheKey;->RESOURCE_CLASS_BYTES:Lcom/agc/glide/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;IILcom/agc/glide/load/Transformation;Ljava/lang/Class;Lcom/agc/glide/load/Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            "Lcom/agc/glide/load/Key;",
            "Lcom/agc/glide/load/Key;",
            "II",
            "Lcom/agc/glide/load/Transformation<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Options;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object p2, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    iput-object p3, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    iput p4, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    iput p5, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    iput-object p6, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    iput-object p7, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    iput-object p8, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    return-void
.end method

.method private getResourceClassBytes()[B
    .locals 3

    sget-object v0, Lcom/agc/glide/load/engine/ResourceCacheKey;->RESOURCE_CLASS_BYTES:Lcom/agc/glide/util/LruCache;

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/agc/glide/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/agc/glide/load/Key;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/agc/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/engine/ResourceCacheKey;

    iget v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    iget v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    iget v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    iget-object v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    invoke-static {v0, v2}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    iget-object v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v0, v2}, Lcom/agc/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    iget-object v2, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v0, v2}, Lcom/agc/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    iget-object p1, p1, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v0}, Lcom/agc/glide/load/Key;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v1}, Lcom/agc/glide/load/Key;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v1}, Lcom/agc/glide/load/Options;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decodedResourceClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->decodedResourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transformation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    const-class v1, [B

    const/16 v2, 0x8

    invoke-interface {v0, v2, v1}, Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;->getExact(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->width:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->height:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v1, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->transformation:Lcom/agc/glide/load/Transformation;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v1, p1}, Lcom/agc/glide/load/Options;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    invoke-direct {p0}, Lcom/agc/glide/load/engine/ResourceCacheKey;->getResourceClassBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lcom/agc/glide/load/engine/ResourceCacheKey;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {p1, v0}, Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;->put(Ljava/lang/Object;)V

    return-void
.end method
