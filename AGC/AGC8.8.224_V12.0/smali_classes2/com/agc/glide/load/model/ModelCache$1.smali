.class Lcom/agc/glide/load/model/ModelCache$1;
.super Lcom/agc/glide/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/model/ModelCache;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/util/LruCache<",
        "Lcom/agc/glide/load/model/ModelCache$ModelKey<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/model/ModelCache;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/model/ModelCache;J)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/model/ModelCache$1;->this$0:Lcom/agc/glide/load/model/ModelCache;

    invoke-direct {p0, p2, p3}, Lcom/agc/glide/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onItemEvicted(Lcom/agc/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/model/ModelCache$ModelKey<",
            "TA;>;TB;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/agc/glide/load/model/ModelCache$ModelKey;->release()V

    return-void
.end method

.method public bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/agc/glide/load/model/ModelCache$ModelKey;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/model/ModelCache$1;->onItemEvicted(Lcom/agc/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V

    return-void
.end method
