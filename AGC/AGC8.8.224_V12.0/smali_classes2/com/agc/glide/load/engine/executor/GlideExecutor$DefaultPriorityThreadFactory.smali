.class final Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;
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
    name = "DefaultPriorityThreadFactory"
.end annotation


# static fields
.field private static final DEFAULT_PRIORITY:I = 0x9


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/agc/glide/load/engine/executor/GlideExecutor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;

    invoke-direct {v0, p0, p1}, Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory$1;-><init>(Lcom/agc/glide/load/engine/executor/GlideExecutor$DefaultPriorityThreadFactory;Ljava/lang/Runnable;)V

    return-object v0
.end method
