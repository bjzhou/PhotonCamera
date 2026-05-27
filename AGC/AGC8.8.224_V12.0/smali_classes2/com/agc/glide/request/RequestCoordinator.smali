.class public interface abstract Lcom/agc/glide/request/RequestCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/RequestCoordinator$RequestState;
    }
.end annotation


# virtual methods
.method public abstract canNotifyCleared(Lcom/agc/glide/request/Request;)Z
.end method

.method public abstract canNotifyStatusChanged(Lcom/agc/glide/request/Request;)Z
.end method

.method public abstract canSetImage(Lcom/agc/glide/request/Request;)Z
.end method

.method public abstract getRoot()Lcom/agc/glide/request/RequestCoordinator;
.end method

.method public abstract isAnyResourceSet()Z
.end method

.method public abstract onRequestFailed(Lcom/agc/glide/request/Request;)V
.end method

.method public abstract onRequestSuccess(Lcom/agc/glide/request/Request;)V
.end method
