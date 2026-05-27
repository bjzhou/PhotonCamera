.class public interface abstract Lcom/agc/net/NetworkUtil$DownloadProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/net/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadProgressListener"
.end annotation


# virtual methods
.method public abstract onDownloadError()V
.end method

.method public abstract onDownloadStart()V
.end method

.method public abstract onDownloadSuccess(Ljava/lang/String;)V
.end method

.method public abstract onProgress(I)V
.end method
