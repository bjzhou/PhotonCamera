.class public abstract Lcom/agc/glide/request/target/CustomViewTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/target/Target<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CustomViewTarget"

.field private static final VIEW_TAG_ID:I


# instance fields
.field private attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

.field private isAttachStateListenerAdded:Z

.field private isClearedByUs:Z

.field private final sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/agc/R$id;->glide_custom_view_target_tag:I

    sput v0, Lcom/agc/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    new-instance v0, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-direct {v0, p1}, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    return-void
.end method

.method private getTag()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    sget v1, Lcom/agc/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private maybeAddAttachStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private maybeRemoveAttachStateListener()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isAttachStateListenerAdded:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setTag(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    sget v1, Lcom/agc/glide/request/target/CustomViewTarget;->VIEW_TAG_ID:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final clearOnDetach()Lcom/agc/glide/request/target/CustomViewTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/agc/glide/request/target/CustomViewTarget$1;

    invoke-direct {v0, p0}, Lcom/agc/glide/request/target/CustomViewTarget$1;-><init>(Lcom/agc/glide/request/target/CustomViewTarget;)V

    iput-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->attachStateListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-direct {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    return-object p0
.end method

.method public final getRequest()Lcom/agc/glide/request/Request;
    .locals 2

    invoke-direct {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/agc/glide/request/Request;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/agc/glide/request/Request;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;->getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0}, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;->clearCallbacksAndListener()V

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/target/CustomViewTarget;->onResourceCleared(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->maybeRemoveAttachStateListener()V

    :cond_0
    return-void
.end method

.method public final onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->maybeAddAttachStateListener()V

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/target/CustomViewTarget;->onResourceLoading(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public abstract onResourceCleared(Landroid/graphics/drawable/Drawable;)V
.end method

.method public onResourceLoading(Landroid/graphics/drawable/Drawable;)V
    .locals 0

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

.method public final pauseMyRequest()V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->getRequest()Lcom/agc/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    invoke-interface {v0}, Lcom/agc/glide/request/Request;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->isClearedByUs:Z

    :cond_0
    return-void
.end method

.method public final removeCallback(Lcom/agc/glide/request/target/SizeReadyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;->removeCallback(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    return-void
.end method

.method public final resumeMyRequest()V
    .locals 2

    invoke-virtual {p0}, Lcom/agc/glide/request/target/CustomViewTarget;->getRequest()Lcom/agc/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/glide/request/Request;->isCleared()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/agc/glide/request/Request;->begin()V

    :cond_0
    return-void
.end method

.method public final setRequest(Lcom/agc/glide/request/Request;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/agc/glide/request/target/CustomViewTarget;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/request/target/CustomViewTarget;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final useTagId(I)Lcom/agc/glide/request/target/CustomViewTarget;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/agc/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final waitForLayout()Lcom/agc/glide/request/target/CustomViewTarget;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/target/CustomViewTarget<",
            "TT;TZ;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/target/CustomViewTarget;->sizeDeterminer:Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/agc/glide/request/target/CustomViewTarget$SizeDeterminer;->waitForLayout:Z

    return-object p0
.end method
