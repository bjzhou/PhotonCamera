.class public Lcom/agc/glide/load/engine/Engine$LoadStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadStatus"
.end annotation


# instance fields
.field private final cb:Lcom/agc/glide/request/ResourceCallback;

.field private final engineJob:Lcom/agc/glide/load/engine/EngineJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/agc/glide/load/engine/Engine;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/ResourceCallback;Lcom/agc/glide/load/engine/EngineJob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/ResourceCallback;",
            "Lcom/agc/glide/load/engine/EngineJob<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->this$0:Lcom/agc/glide/load/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->cb:Lcom/agc/glide/request/ResourceCallback;

    iput-object p3, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/agc/glide/load/engine/EngineJob;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->this$0:Lcom/agc/glide/load/engine/Engine;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->engineJob:Lcom/agc/glide/load/engine/EngineJob;

    iget-object v2, p0, Lcom/agc/glide/load/engine/Engine$LoadStatus;->cb:Lcom/agc/glide/request/ResourceCallback;

    invoke-virtual {v1, v2}, Lcom/agc/glide/load/engine/EngineJob;->removeCallback(Lcom/agc/glide/request/ResourceCallback;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
