.class public final Lcom/agc/glide/request/SingleRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/Request;
.implements Lcom/agc/glide/request/target/SizeReadyCallback;
.implements Lcom/agc/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/SingleRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/Request;",
        "Lcom/agc/glide/request/target/SizeReadyCallback;",
        "Lcom/agc/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final GLIDE_TAG:Ljava/lang/String; = "Glide"

.field private static final IS_VERBOSE_LOGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "GlideRequest"


# instance fields
.field private final animationFactory:Lcom/agc/glide/request/transition/TransitionFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final callbackExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private cookie:I

.field private volatile engine:Lcom/agc/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private final glideContext:Lcom/agc/glide/GlideContext;

.field private height:I

.field private isCallingCallbacks:Z

.field private loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

.field private final model:Ljava/lang/Object;

.field private final overrideHeight:I

.field private final overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final priority:Lcom/agc/glide/Priority;

.field private final requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

.field private final requestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field private final requestLock:Ljava/lang/Object;

.field private final requestOptions:Lcom/agc/glide/request/BaseRequestOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;"
        }
    .end annotation
.end field

.field private requestOrigin:Ljava/lang/RuntimeException;

.field private resource:Lcom/agc/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation
.end field

.field private startTime:J

.field private final stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

.field private status:Lcom/agc/glide/request/SingleRequest$Status;

.field private final tag:Ljava/lang/String;

.field private final target:Lcom/agc/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final targetListener:Lcom/agc/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "GlideRequest"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/agc/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/agc/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/agc/glide/request/BaseRequestOptions;IILcom/agc/glide/Priority;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/List;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/request/target/Target<",
            "TR;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/agc/glide/request/RequestCoordinator;",
            "Lcom/agc/glide/load/engine/Engine;",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/agc/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-static {}, Lcom/agc/glide/util/pool/StateVerifier;->newInstance()Lcom/agc/glide/util/pool/StateVerifier;

    move-result-object v1

    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    move-object v1, p3

    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->context:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->glideContext:Lcom/agc/glide/GlideContext;

    move-object v2, p4

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    move-object v2, p5

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    move-object v2, p6

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    move v2, p7

    iput v2, v0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    move v2, p8

    iput v2, v0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    move-object v2, p9

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->priority:Lcom/agc/glide/Priority;

    move-object v2, p10

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    move-object v2, p11

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->targetListener:Lcom/agc/glide/request/RequestListener;

    move-object v2, p12

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->engine:Lcom/agc/glide/load/engine/Engine;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->animationFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->PENDING:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object v2, v0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    iget-object v2, v0, Lcom/agc/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/agc/glide/GlideContext;->getExperiments()Lcom/agc/glide/GlideExperiments;

    move-result-object v1

    const-class v2, Lcom/agc/glide/GlideBuilder$LogRequestOrigins;

    invoke-virtual {v1, v2}, Lcom/agc/glide/GlideExperiments;->isEnabled(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Glide request origin trace"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/agc/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method private assertNotCallingCallbacks()V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t start or clear loads in RequestListener or Target callbacks. If you\'re trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private canNotifyCleared()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canNotifyCleared(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canNotifyStatusChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canSetResource()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->canSetImage(Lcom/agc/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private cancel()V
    .locals 1

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/agc/glide/request/target/Target;->removeCallback(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/glide/load/engine/Engine$LoadStatus;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    :cond_0
    return-void
.end method

.method private experimentalNotifyRequestStarted(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/agc/glide/request/RequestListener;

    instance-of v2, v1, Lcom/agc/glide/request/ExperimentalRequestListener;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/agc/glide/request/ExperimentalRequestListener;

    invoke-virtual {v1, p1}, Lcom/agc/glide/request/ExperimentalRequestListener;->onRequestStarted(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getErrorPlaceholder()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getErrorId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getFallbackId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getPlaceholderId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/agc/glide/request/SingleRequest;->loadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isFirstReadyResource()Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/agc/glide/request/RequestCoordinator;->getRoot()Lcom/agc/glide/request/RequestCoordinator;

    move-result-object v0

    invoke-interface {v0}, Lcom/agc/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private loadDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/agc/glide/load/resource/drawable/DrawableDecoderCompat;->getDrawable(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private logV(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " this: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlideRequest"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static maybeApplySizeMultiplier(IF)I
    .locals 1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    :goto_0
    return p0
.end method

.method private notifyRequestCoordinatorLoadFailed()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->onRequestFailed(Lcom/agc/glide/request/Request;)V

    :cond_0
    return-void
.end method

.method private notifyRequestCoordinatorLoadSucceeded()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestCoordinator:Lcom/agc/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/agc/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/agc/glide/request/Request;)V

    :cond_0
    return-void
.end method

.method public static obtain(Landroid/content/Context;Lcom/agc/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/agc/glide/request/BaseRequestOptions;IILcom/agc/glide/Priority;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/List;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)Lcom/agc/glide/request/SingleRequest;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;II",
            "Lcom/agc/glide/Priority;",
            "Lcom/agc/glide/request/target/Target<",
            "TR;>;",
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;",
            "Ljava/util/List<",
            "Lcom/agc/glide/request/RequestListener<",
            "TR;>;>;",
            "Lcom/agc/glide/request/RequestCoordinator;",
            "Lcom/agc/glide/load/engine/Engine;",
            "Lcom/agc/glide/request/transition/TransitionFactory<",
            "-TR;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/agc/glide/request/SingleRequest<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lcom/agc/glide/request/SingleRequest;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lcom/agc/glide/request/SingleRequest;-><init>(Landroid/content/Context;Lcom/agc/glide/GlideContext;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lcom/agc/glide/request/BaseRequestOptions;IILcom/agc/glide/Priority;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/request/RequestListener;Ljava/util/List;Lcom/agc/glide/request/RequestCoordinator;Lcom/agc/glide/load/engine/Engine;Lcom/agc/glide/request/transition/TransitionFactory;Ljava/util/concurrent/Executor;)V

    return-object v17
.end method

.method private onLoadFailed(Lcom/agc/glide/load/engine/GlideException;I)V
    .locals 8

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->requestOrigin:Ljava/lang/RuntimeException;

    invoke-virtual {p1, v1}, Lcom/agc/glide/load/engine/GlideException;->setOrigin(Ljava/lang/Exception;)V

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v1}, Lcom/agc/glide/GlideContext;->getLogLevel()I

    move-result v1

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load failed for ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with dimensions ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/agc/glide/request/SingleRequest;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/agc/glide/request/SingleRequest;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p2, 0x4

    if-gt v1, p2, :cond_0

    const-string p2, "Glide"

    invoke-virtual {p1, p2}, Lcom/agc/glide/load/engine/GlideException;->logRootCauses(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    sget-object p2, Lcom/agc/glide/request/SingleRequest$Status;->FAILED:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->notifyRequestCoordinatorLoadFailed()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/agc/glide/request/RequestListener;

    iget-object v5, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v6, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v7

    invoke-interface {v4, p1, v5, v6, v7}, Lcom/agc/glide/request/RequestListener;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Z)Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :cond_2
    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->targetListener:Lcom/agc/glide/request/RequestListener;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v6

    invoke-interface {v2, p1, v4, v5, v6}, Lcom/agc/glide/request/RequestListener;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    or-int p1, v3, p2

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->setErrorPlaceholder()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :try_start_2
    iput-boolean v1, p0, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    const-string p1, "GlideRequest"

    iget p2, p0, Lcom/agc/glide/request/SingleRequest;->cookie:I

    invoke-static {p1, p2}, Lcom/agc/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    throw p1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private onResourceReady(Lcom/agc/glide/load/engine/Resource;Ljava/lang/Object;Lcom/agc/glide/load/DataSource;Z)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "TR;>;TR;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    move-object v1, p0

    move-object/from16 v0, p3

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->isFirstReadyResource()Z

    move-result v9

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object v2, v1, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->glideContext:Lcom/agc/glide/GlideContext;

    invoke-virtual {v2}, Lcom/agc/glide/GlideContext;->getLogLevel()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished loading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/agc/glide/request/SingleRequest;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/agc/glide/request/SingleRequest;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/agc/glide/request/SingleRequest;->startTime:J

    invoke-static {v3, v4}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Glide"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->notifyRequestCoordinatorLoadSucceeded()V

    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    const/4 v11, 0x0

    :try_start_0
    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v8, v11

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/agc/glide/request/RequestListener;

    iget-object v4, v1, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, v1, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    move-object v2, v13

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move v7, v9

    invoke-interface/range {v2 .. v7}, Lcom/agc/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/load/DataSource;Z)Z

    move-result v2

    or-int v14, v8, v2

    instance-of v2, v13, Lcom/agc/glide/request/ExperimentalRequestListener;

    if-eqz v2, :cond_1

    move-object v2, v13

    check-cast v2, Lcom/agc/glide/request/ExperimentalRequestListener;

    iget-object v4, v1, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, v1, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move v7, v9

    move/from16 v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/agc/glide/request/ExperimentalRequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/load/DataSource;ZZ)Z

    move-result v2

    or-int/2addr v2, v14

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v14

    goto :goto_0

    :cond_2
    move v8, v11

    :cond_3
    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->targetListener:Lcom/agc/glide/request/RequestListener;

    if-eqz v2, :cond_4

    iget-object v4, v1, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v5, v1, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    move v7, v9

    invoke-interface/range {v2 .. v7}, Lcom/agc/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/agc/glide/request/target/Target;Lcom/agc/glide/load/DataSource;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v10, v11

    :goto_1
    or-int v2, v8, v10

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->animationFactory:Lcom/agc/glide/request/transition/TransitionFactory;

    invoke-interface {v2, v0, v9}, Lcom/agc/glide/request/transition/TransitionFactory;->build(Lcom/agc/glide/load/DataSource;Z)Lcom/agc/glide/request/transition/Transition;

    move-result-object v0

    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    move-object/from16 v3, p2

    invoke-interface {v2, v3, v0}, Lcom/agc/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/agc/glide/request/transition/Transition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-boolean v11, v1, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    iget v0, v1, Lcom/agc/glide/request/SingleRequest;->cookie:I

    const-string v2, "GlideRequest"

    invoke-static {v2, v0}, Lcom/agc/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v11, v1, Lcom/agc/glide/request/SingleRequest;->isCallingCallbacks:Z

    throw v0
.end method

.method private setErrorPlaceholder()V
    .locals 2

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-interface {v1, v0}, Lcom/agc/glide/request/target/Target;->onLoadFailed(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public begin()V
    .locals 5

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    invoke-static {}, Lcom/agc/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/agc/glide/request/SingleRequest;->startTime:J

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iget v2, p0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v1, v2}, Lcom/agc/glide/util/Util;->isValidDimensions(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iput v1, p0, Lcom/agc/glide/request/SingleRequest;->width:I

    iget v1, p0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    iput v1, p0, Lcom/agc/glide/request/SingleRequest;->height:I

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getFallbackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    new-instance v2, Lcom/agc/glide/load/engine/GlideException;

    const-string v3, "Received null model"

    invoke-direct {v2, v3}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/agc/glide/request/SingleRequest;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;I)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v3, Lcom/agc/glide/request/SingleRequest$Status;->RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_8

    sget-object v4, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v2, v4, :cond_3

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    sget-object v2, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/agc/glide/request/SingleRequest;->onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V

    monitor-exit v0

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/agc/glide/request/SingleRequest;->experimentalNotifyRequestStarted(Ljava/lang/Object;)V

    const-string v1, "GlideRequest"

    invoke-static {v1}, Lcom/agc/glide/util/pool/GlideTrace;->beginSectionAsync(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/agc/glide/request/SingleRequest;->cookie:I

    sget-object v1, Lcom/agc/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    iget v2, p0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iget v4, p0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    invoke-static {v2, v4}, Lcom/agc/glide/util/Util;->isValidDimensions(II)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iget v4, p0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    invoke-virtual {p0, v2, v4}, Lcom/agc/glide/request/SingleRequest;->onSizeReady(II)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-interface {v2, p0}, Lcom/agc/glide/request/target/Target;->getSize(Lcom/agc/glide/request/target/SizeReadyCallback;)V

    :goto_1
    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    if-eq v2, v3, :cond_5

    if-ne v2, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->canNotifyStatusChanged()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/agc/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    sget-boolean v1, Lcom/agc/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished run method in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/agc/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/agc/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    :cond_7
    monitor-exit v0

    return-void

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot restart a running request"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 5

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->assertNotCallingCallbacks()V

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v1}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->CLEARED:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->cancel()V

    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-object v3, p0, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->canNotifyCleared()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/agc/glide/request/SingleRequest;->target:Lcom/agc/glide/request/target/Target;

    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/agc/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v3, "GlideRequest"

    iget v4, p0, Lcom/agc/glide/request/SingleRequest;->cookie:I

    invoke-static {v3, v4}, Lcom/agc/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->engine:Lcom/agc/glide/load/engine/Engine;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/engine/Engine;->release(Lcom/agc/glide/load/engine/Resource;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    return-object v0
.end method

.method public isAnyResourceSet()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCleared()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->CLEARED:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isComplete()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEquivalentTo(Lcom/agc/glide/request/Request;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/agc/glide/request/SingleRequest;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v4, v1, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iget v5, v1, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    iget-object v6, v1, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v7, v1, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    iget-object v8, v1, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    iget-object v9, v1, Lcom/agc/glide/request/SingleRequest;->priority:Lcom/agc/glide/Priority;

    iget-object v10, v1, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v10, :cond_1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_0

    :cond_1
    move v10, v3

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    check-cast v0, Lcom/agc/glide/request/SingleRequest;

    iget-object v11, v0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_1
    iget v2, v0, Lcom/agc/glide/request/SingleRequest;->overrideWidth:I

    iget v12, v0, Lcom/agc/glide/request/SingleRequest;->overrideHeight:I

    iget-object v13, v0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v14, v0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    iget-object v15, v0, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    iget-object v3, v0, Lcom/agc/glide/request/SingleRequest;->priority:Lcom/agc/glide/Priority;

    iget-object v0, v0, Lcom/agc/glide/request/SingleRequest;->requestListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v4, v2, :cond_3

    if-ne v5, v12, :cond_3

    invoke-static {v6, v13}, Lcom/agc/glide/util/Util;->bothModelsNullEquivalentOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v7, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v8, v15}, Lcom/agc/glide/util/Util;->bothBaseRequestOptionsNullEquivalentOrEquals(Lcom/agc/glide/request/BaseRequestOptions;Lcom/agc/glide/request/BaseRequestOptions;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v9, v3, :cond_3

    if-ne v10, v0, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    return v3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public isRunning()Z
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/agc/glide/request/SingleRequest;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;I)V

    return-void
.end method

.method public onResourceReady(Lcom/agc/glide/load/engine/Resource;Lcom/agc/glide/load/DataSource;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "*>;",
            "Lcom/agc/glide/load/DataSource;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    if-nez p1, :cond_0

    new-instance p1, Lcom/agc/glide/load/engine/GlideException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " inside, but instead got null."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/SingleRequest;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/agc/glide/request/SingleRequest;->canSetResource()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_2

    :try_start_2
    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    sget-object p2, Lcom/agc/glide/request/SingleRequest$Status;->COMPLETE:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object p2, p0, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    const-string p2, "GlideRequest"

    iget p3, p0, Lcom/agc/glide/request/SingleRequest;->cookie:I

    invoke-static {p2, p3}, Lcom/agc/glide/util/pool/GlideTrace;->endSectionAsync(Ljava/lang/String;I)V

    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p2, p0, Lcom/agc/glide/request/SingleRequest;->engine:Lcom/agc/glide/load/engine/Engine;

    invoke-virtual {p2, p1}, Lcom/agc/glide/load/engine/Engine;->release(Lcom/agc/glide/load/engine/Resource;)V

    return-void

    :cond_2
    :try_start_3
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/agc/glide/request/SingleRequest;->onResourceReady(Lcom/agc/glide/load/engine/Resource;Ljava/lang/Object;Lcom/agc/glide/load/DataSource;Z)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :cond_3
    :goto_1
    :try_start_4
    iput-object v0, p0, Lcom/agc/glide/request/SingleRequest;->resource:Lcom/agc/glide/load/engine/Resource;

    new-instance p2, Lcom/agc/glide/load/engine/GlideException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected to receive an object of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " but instead got "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :cond_4
    const-string v0, ""

    :goto_2
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "} inside Resource{"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "}."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz v2, :cond_5

    const-string v0, ""

    goto :goto_3

    :cond_5
    const-string v0, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_3
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/agc/glide/load/engine/GlideException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/agc/glide/request/SingleRequest;->onLoadFailed(Lcom/agc/glide/load/engine/GlideException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_4

    :catchall_1
    move-exception p1

    :goto_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_6

    iget-object p2, p0, Lcom/agc/glide/request/SingleRequest;->engine:Lcom/agc/glide/load/engine/Engine;

    invoke-virtual {p2, v0}, Lcom/agc/glide/load/engine/Engine;->release(Lcom/agc/glide/load/engine/Resource;)V

    :cond_6
    throw p1
.end method

.method public onSizeReady(II)V
    .locals 24

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->stateVerifier:Lcom/agc/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/agc/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-object v14, v15, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    sget-boolean v0, Lcom/agc/glide/request/SingleRequest;->IS_VERBOSE_LOGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got onSizeReady in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v15, Lcom/agc/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/agc/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v15, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    sget-object v2, Lcom/agc/glide/request/SingleRequest$Status;->WAITING_FOR_SIZE:Lcom/agc/glide/request/SingleRequest$Status;

    if-eq v1, v2, :cond_1

    monitor-exit v14

    return-void

    :cond_1
    sget-object v13, Lcom/agc/glide/request/SingleRequest$Status;->RUNNING:Lcom/agc/glide/request/SingleRequest$Status;

    iput-object v13, v15, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    iget-object v1, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v1}, Lcom/agc/glide/request/BaseRequestOptions;->getSizeMultiplier()F

    move-result v1

    move/from16 v2, p1

    invoke-static {v2, v1}, Lcom/agc/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v2

    iput v2, v15, Lcom/agc/glide/request/SingleRequest;->width:I

    move/from16 v2, p2

    invoke-static {v2, v1}, Lcom/agc/glide/request/SingleRequest;->maybeApplySizeMultiplier(IF)I

    move-result v1

    iput v1, v15, Lcom/agc/glide/request/SingleRequest;->height:I

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished setup for calling load in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v15, Lcom/agc/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/agc/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v15, Lcom/agc/glide/request/SingleRequest;->engine:Lcom/agc/glide/load/engine/Engine;

    iget-object v2, v15, Lcom/agc/glide/request/SingleRequest;->glideContext:Lcom/agc/glide/GlideContext;

    iget-object v3, v15, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v4, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v4}, Lcom/agc/glide/request/BaseRequestOptions;->getSignature()Lcom/agc/glide/load/Key;

    move-result-object v4

    iget v5, v15, Lcom/agc/glide/request/SingleRequest;->width:I

    iget v6, v15, Lcom/agc/glide/request/SingleRequest;->height:I

    iget-object v7, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v7}, Lcom/agc/glide/request/BaseRequestOptions;->getResourceClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v8, v15, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    iget-object v9, v15, Lcom/agc/glide/request/SingleRequest;->priority:Lcom/agc/glide/Priority;

    iget-object v10, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v10}, Lcom/agc/glide/request/BaseRequestOptions;->getDiskCacheStrategy()Lcom/agc/glide/load/engine/DiskCacheStrategy;

    move-result-object v10

    iget-object v11, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v11}, Lcom/agc/glide/request/BaseRequestOptions;->getTransformations()Ljava/util/Map;

    move-result-object v11

    iget-object v12, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v12}, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired()Z

    move-result v12

    move-object/from16 v16, v13

    iget-object v13, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v13}, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform()Z

    move-result v13

    move/from16 v21, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getOptions()Lcom/agc/glide/load/Options;

    move-result-object v0

    move-object/from16 p1, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->isMemoryCacheable()Z

    move-result v0

    move/from16 p2, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getUseUnlimitedSourceGeneratorsPool()Z

    move-result v0

    move/from16 v17, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getUseAnimationPool()Z

    move-result v0

    move/from16 v18, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->requestOptions:Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->getOnlyRetrieveFromCache()Z

    move-result v0

    move/from16 v19, v0

    iget-object v0, v15, Lcom/agc/glide/request/SingleRequest;->callbackExecutor:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v22, v16

    move-object/from16 v23, v14

    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, p0

    move-object/from16 v20, v0

    :try_start_1
    invoke-virtual/range {v1 .. v20}, Lcom/agc/glide/load/engine/Engine;->load(Lcom/agc/glide/GlideContext;Ljava/lang/Object;Lcom/agc/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/agc/glide/Priority;Lcom/agc/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZLcom/agc/glide/load/Options;ZZZZLcom/agc/glide/request/ResourceCallback;Ljava/util/concurrent/Executor;)Lcom/agc/glide/load/engine/Engine$LoadStatus;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    :try_start_2
    iput-object v0, v1, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    iget-object v0, v1, Lcom/agc/glide/request/SingleRequest;->status:Lcom/agc/glide/request/SingleRequest$Status;

    move-object/from16 v2, v22

    if-eq v0, v2, :cond_3

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/agc/glide/request/SingleRequest;->loadStatus:Lcom/agc/glide/load/engine/Engine$LoadStatus;

    :cond_3
    if-eqz v21, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finished onSizeReady in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, v1, Lcom/agc/glide/request/SingleRequest;->startTime:J

    invoke-static {v2, v3}, Lcom/agc/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/agc/glide/request/SingleRequest;->logV(Ljava/lang/String;)V

    :cond_4
    monitor-exit v23

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v23, v14

    move-object v1, v15

    :goto_0
    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/agc/glide/request/SingleRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/SingleRequest;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/agc/glide/request/SingleRequest;->requestLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/agc/glide/request/SingleRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/agc/glide/request/SingleRequest;->transcodeClass:Ljava/lang/Class;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "[model="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transcodeClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
