.class interface abstract Lcom/agc/widget/recyclerview/ThreadUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;,
        Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getBackgroundProxy(Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;)",
            "Lcom/agc/widget/recyclerview/ThreadUtil$BackgroundCallback<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getMainThreadProxy(Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;)Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;)",
            "Lcom/agc/widget/recyclerview/ThreadUtil$MainThreadCallback<",
            "TT;>;"
        }
    .end annotation
.end method
