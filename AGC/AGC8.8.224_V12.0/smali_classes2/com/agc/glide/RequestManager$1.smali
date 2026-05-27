.class Lcom/agc/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/RequestManager;


# direct methods
.method public constructor <init>(Lcom/agc/glide/RequestManager;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/RequestManager$1;->this$0:Lcom/agc/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/RequestManager$1;->this$0:Lcom/agc/glide/RequestManager;

    iget-object v1, v0, Lcom/agc/glide/RequestManager;->lifecycle:Lcom/agc/glide/manager/Lifecycle;

    invoke-interface {v1, v0}, Lcom/agc/glide/manager/Lifecycle;->addListener(Lcom/agc/glide/manager/LifecycleListener;)V

    return-void
.end method
