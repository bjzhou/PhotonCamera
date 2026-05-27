.class final Lcom/agc/glide/ListPreloader$PreloadTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/ListPreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreloadTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/target/Target<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field photoHeight:I

.field photoWidth:I

.field private request:Lcom/agc/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/agc/glide/request/Request;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/ListPreloader$PreloadTarget;->request:Lcom/agc/glide/request/Request;

    return-object v0
.end method

.method public getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V
    .locals 2

    iget v0, p0, Lcom/agc/glide/ListPreloader$PreloadTarget;->photoWidth:I

    iget v1, p0, Lcom/agc/glide/ListPreloader$PreloadTarget;->photoHeight:I

    invoke-interface {p1, v0, v1}, Lcom/agc/glide/request/target/SizeReadyCallback;->onSizeReady(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onResourceReady(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/agc/glide/request/transition/Transition<",
            "-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/agc/glide/request/target/SizeReadyCallback;)V
    .locals 0

    return-void
.end method

.method public setRequest(Lcom/agc/glide/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/ListPreloader$PreloadTarget;->request:Lcom/agc/glide/request/Request;

    return-void
.end method
