.class public interface abstract Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getHostApiVersion()J
.end method

.method public abstract getModelInfo(Lcom/google/android/libraries/lens/lenslite/api/DownloadParam;Lcom/google/android/libraries/lens/lenslite/api/ModelInfoListener;)V
.end method

.method public abstract invalidate()V
.end method

.method public abstract onNewBitmap(Landroid/graphics/Bitmap;I)J
.end method

.method public abstract onNewImage(Landroid/media/Image;I)J
.end method

.method public abstract onNewImage(Lcom/google/android/libraries/lens/lenslite/api/ImageProxy;I)J
.end method

.method public abstract restart()V
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public abstract setAlertDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end method

.method public abstract setEventListener(Lcom/google/android/libraries/lens/lenslite/api/LinkEventListener;Landroid/os/Handler;)V
.end method

.method public abstract setKeyguardDismisser(Lcom/google/android/libraries/lens/lenslite/api/KeyguardDismisser;)V
.end method

.method public abstract setLinkHighResBitmapRequester(Lcom/google/android/libraries/lens/lenslite/api/LinkHighResBitmapRequester;)V
.end method

.method public abstract setPointOfInterest(Landroid/graphics/PointF;)V
.end method

.method public abstract setResultListener(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLLinkResultListener;)V
.end method

.method public abstract shutdown()V
.end method

.method public abstract start()V
.end method

.method public abstract startDownload(Ljava/util/List;Lcom/google/android/libraries/lens/lenslite/api/DownloadListener;)V
.end method

.method public abstract startLinkLogging(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract stop()V
.end method

.method public abstract stopLinkLogging()V
.end method
