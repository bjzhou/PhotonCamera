.class Lcom/agc/glide/disklrucache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/disklrucache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/disklrucache/DiskLruCache;


# direct methods
.method public constructor <init>(Lcom/agc/glide/disklrucache/DiskLruCache;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/disklrucache/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$100(Lcom/agc/glide/disklrucache/DiskLruCache;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$200(Lcom/agc/glide/disklrucache/DiskLruCache;)V

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$300(Lcom/agc/glide/disklrucache/DiskLruCache;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    invoke-static {v1}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$400(Lcom/agc/glide/disklrucache/DiskLruCache;)V

    iget-object v1, p0, Lcom/agc/glide/disklrucache/DiskLruCache$1;->this$0:Lcom/agc/glide/disklrucache/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/agc/glide/disklrucache/DiskLruCache;->access$502(Lcom/agc/glide/disklrucache/DiskLruCache;I)I

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
