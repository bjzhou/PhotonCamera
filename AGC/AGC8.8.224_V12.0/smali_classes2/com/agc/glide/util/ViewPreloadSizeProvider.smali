.class public Lcom/agc/glide/util/ViewPreloadSizeProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/ListPreloader$PreloadSizeProvider;
.implements Lcom/agc/glide/request/target/SizeReadyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/ListPreloader$PreloadSizeProvider<",
        "TT;>;",
        "Lcom/agc/glide/request/target/SizeReadyCallback;"
    }
.end annotation


# instance fields
.field private size:[I

.field private viewTarget:Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1}, Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/target/CustomViewTarget;->getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    return-void
.end method


# virtual methods
.method public getPreloadSize(Ljava/lang/Object;II)[I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)[I"
        }
    .end annotation

    iget-object p1, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    return-object p1
.end method

.method public onSizeReady(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->size:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->size:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-direct {v0, p1}, Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/agc/glide/util/ViewPreloadSizeProvider;->viewTarget:Lcom/agc/glide/util/ViewPreloadSizeProvider$SizeViewTarget;

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/target/CustomViewTarget;->getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
