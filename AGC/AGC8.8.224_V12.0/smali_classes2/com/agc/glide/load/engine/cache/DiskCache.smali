.class public interface abstract Lcom/agc/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/agc/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/agc/glide/load/Key;)V
.end method

.method public abstract get(Lcom/agc/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/cache/DiskCache$Writer;)V
.end method
