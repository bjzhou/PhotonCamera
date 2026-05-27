.class Lcom/agc/glide/load/engine/SourceGenerator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/engine/SourceGenerator;->startNextLoad(Lcom/agc/glide/load/model/ModelLoader$LoadData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/SourceGenerator;

.field final synthetic val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/SourceGenerator;Lcom/agc/glide/load/model/ModelLoader$LoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->this$0:Lcom/agc/glide/load/engine/SourceGenerator;

    iput-object p2, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->this$0:Lcom/agc/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/SourceGenerator;->isCurrentRequest(Lcom/agc/glide/load/model/ModelLoader$LoadData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->this$0:Lcom/agc/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/load/engine/SourceGenerator;->onDataReadyInternal(Lcom/agc/glide/load/model/ModelLoader$LoadData;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->this$0:Lcom/agc/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/SourceGenerator;->isCurrentRequest(Lcom/agc/glide/load/model/ModelLoader$LoadData;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->this$0:Lcom/agc/glide/load/engine/SourceGenerator;

    iget-object v1, p0, Lcom/agc/glide/load/engine/SourceGenerator$1;->val$toStart:Lcom/agc/glide/load/model/ModelLoader$LoadData;

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/load/engine/SourceGenerator;->onLoadFailedInternal(Lcom/agc/glide/load/model/ModelLoader$LoadData;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
