.class public Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/request/transition/TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/request/transition/DrawableCrossFadeFactory$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/request/transition/TransitionFactory<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final duration:I

.field private final isCrossFadeEnabled:Z

.field private resourceTransition:Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iput-boolean p2, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    return-void
.end method

.method private getResourceTransition()Lcom/agc/glide/request/transition/Transition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;

    iget v1, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->duration:I

    iget-boolean v2, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->isCrossFadeEnabled:Z

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;-><init>(IZ)V

    iput-object v0, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->resourceTransition:Lcom/agc/glide/request/transition/DrawableCrossFadeTransition;

    return-object v0
.end method


# virtual methods
.method public build(Lcom/agc/glide/load/DataSource;Z)Lcom/agc/glide/request/transition/Transition;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/DataSource;",
            "Z)",
            "Lcom/agc/glide/request/transition/Transition<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    sget-object p2, Lcom/agc/glide/load/DataSource;->MEMORY_CACHE:Lcom/agc/glide/load/DataSource;

    if-ne p1, p2, :cond_0

    invoke-static {}, Lcom/agc/glide/request/transition/NoTransition;->get()Lcom/agc/glide/request/transition/Transition;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/agc/glide/request/transition/DrawableCrossFadeFactory;->getResourceTransition()Lcom/agc/glide/request/transition/Transition;

    move-result-object p1

    :goto_0
    return-object p1
.end method
