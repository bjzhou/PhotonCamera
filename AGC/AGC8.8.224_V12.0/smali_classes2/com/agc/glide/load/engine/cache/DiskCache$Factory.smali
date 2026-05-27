.class public interface abstract Lcom/agc/glide/load/engine/cache/DiskCache$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/cache/DiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "image_manager_disk_cache"

.field public static final DEFAULT_DISK_CACHE_SIZE:I = 0xfa00000


# virtual methods
.method public abstract build()Lcom/agc/glide/load/engine/cache/DiskCache;
.end method
