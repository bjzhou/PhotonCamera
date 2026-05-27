.class public final Lcom/agc/glide/load/engine/cache/DiskCacheAdapter$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/cache/DiskCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/agc/glide/load/engine/cache/DiskCache;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/agc/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    return-object v0
.end method
