.class Lcom/agc/glide/load/engine/ActiveResources$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/engine/ActiveResources;-><init>(ZLjava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/ActiveResources;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/ActiveResources;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/ActiveResources$2;->this$0:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/ActiveResources$2;->this$0:Lcom/agc/glide/load/engine/ActiveResources;

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/ActiveResources;->cleanReferenceQueue()V

    return-void
.end method
