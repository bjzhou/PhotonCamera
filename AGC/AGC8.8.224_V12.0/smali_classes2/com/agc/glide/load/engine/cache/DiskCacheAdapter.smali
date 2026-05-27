.class public Lcom/agc/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/cache/DiskCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/engine/cache/DiskCacheAdapter$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public delete(Lcom/agc/glide/load/Key;)V
    .locals 0

    return-void
.end method

.method public get(Lcom/agc/glide/load/Key;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 0

    return-void
.end method
