.class final Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/executor/GlideExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultThreadFactory"
.end annotation


# instance fields
.field private final delegate:Ljava/util/concurrent/ThreadFactory;

.field private final name:Ljava/lang/String;

.field final preventNetworkOperations:Z

.field private final threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

.field final uncaughtThrowableStrategy:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->delegate:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->uncaughtThrowableStrategy:Lcom/agc/glide/load/engine/executor/GlideExecutor$UncaughtThrowableStrategy;

    iput-boolean p4, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->preventNetworkOperations:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->delegate:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;

    invoke-direct {v1, p0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory$1;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glide-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-thread-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultThreadFactory;->threadNum:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-object p1
.end method
