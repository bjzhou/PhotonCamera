.class Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;->this$0:Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const/16 v0, 0x9

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
