.class Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/gif/GifFrameLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FrameLoaderCallback"
.end annotation


# static fields
.field static final MSG_CLEAR:I = 0x2

.field static final MSG_DELAY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/resource/gif/GifFrameLoader;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;->this$0:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
