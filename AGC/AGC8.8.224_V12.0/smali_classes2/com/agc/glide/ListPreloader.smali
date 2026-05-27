.class public Lcom/agc/glide/ListPreloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/ListPreloader$PreloadModelProvider;,
        Lcom/agc/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/agc/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/agc/glide/ListPreloader$PreloadTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private isIncreasing:Z

.field private lastEnd:I

.field private lastFirstVisible:I

.field private lastStart:I

.field private final maxPreload:I

.field private final preloadDimensionProvider:Lcom/agc/glide/ListPreloader$PreloadSizeProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadModelProvider:Lcom/agc/glide/ListPreloader$PreloadModelProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final preloadTargetQueue:Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

.field private final requestManager:Lcom/agc/glide/RequestManager;

.field private totalItemCount:I


# direct methods
.method public constructor <init>(Lcom/agc/glide/RequestManager;Lcom/agc/glide/ListPreloader$PreloadModelProvider;Lcom/agc/glide/ListPreloader$PreloadSizeProvider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/RequestManager;",
            "Lcom/agc/glide/ListPreloader$PreloadModelProvider<",
            "TT;>;",
            "Lcom/agc/glide/ListPreloader$PreloadSizeProvider<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/glide/ListPreloader;->lastFirstVisible:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/ListPreloader;->isIncreasing:Z

    iput-object p1, p0, Lcom/agc/glide/ListPreloader;->requestManager:Lcom/agc/glide/RequestManager;

    iput-object p2, p0, Lcom/agc/glide/ListPreloader;->preloadModelProvider:Lcom/agc/glide/ListPreloader$PreloadModelProvider;

    iput-object p3, p0, Lcom/agc/glide/ListPreloader;->preloadDimensionProvider:Lcom/agc/glide/ListPreloader$PreloadSizeProvider;

    iput p4, p0, Lcom/agc/glide/ListPreloader;->maxPreload:I

    new-instance p1, Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

    add-int/2addr p4, v0

    invoke-direct {p1, p4}, Lcom/agc/glide/ListPreloader$PreloadTargetQueue;-><init>(I)V

    iput-object p1, p0, Lcom/agc/glide/ListPreloader;->preloadTargetQueue:Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

    return-void
.end method

.method private cancelAll()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/agc/glide/ListPreloader;->preloadTargetQueue:Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

    iget-object v2, v2, Lcom/agc/glide/ListPreloader$PreloadTargetQueue;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/agc/glide/ListPreloader;->requestManager:Lcom/agc/glide/RequestManager;

    iget-object v3, p0, Lcom/agc/glide/ListPreloader;->preloadTargetQueue:Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

    invoke-virtual {v3, v0, v0}, Lcom/agc/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/agc/glide/ListPreloader$PreloadTarget;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private preload(II)V
    .locals 4

    if-ge p1, p2, :cond_0

    iget v0, p0, Lcom/agc/glide/ListPreloader;->lastEnd:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    move v0, p2

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/agc/glide/ListPreloader;->lastStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, p2

    :goto_0
    iget v2, p0, Lcom/agc/glide/ListPreloader;->totalItemCount:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/agc/glide/ListPreloader;->totalItemCount:I

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, p2, :cond_1

    move p1, v1

    :goto_1
    if-ge p1, v0, :cond_2

    iget-object p2, p0, Lcom/agc/glide/ListPreloader;->preloadModelProvider:Lcom/agc/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/agc/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    const/4 v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lcom/agc/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, v0, -0x1

    :goto_2
    if-lt p1, v1, :cond_2

    iget-object p2, p0, Lcom/agc/glide/ListPreloader;->preloadModelProvider:Lcom/agc/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p2, p1}, Lcom/agc/glide/ListPreloader$PreloadModelProvider;->getPreloadItems(I)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2, p1, v3}, Lcom/agc/glide/ListPreloader;->preloadAdapterPosition(Ljava/util/List;IZ)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/agc/glide/ListPreloader;->lastStart:I

    iput v0, p0, Lcom/agc/glide/ListPreloader;->lastEnd:I

    return-void
.end method

.method private preload(IZ)V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/ListPreloader;->isIncreasing:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/agc/glide/ListPreloader;->isIncreasing:Z

    invoke-direct {p0}, Lcom/agc/glide/ListPreloader;->cancelAll()V

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/agc/glide/ListPreloader;->maxPreload:I

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/agc/glide/ListPreloader;->maxPreload:I

    neg-int p2, p2

    :goto_0
    add-int/2addr p2, p1

    invoke-direct {p0, p1, p2}, Lcom/agc/glide/ListPreloader;->preload(II)V

    return-void
.end method

.method private preloadAdapterPosition(Ljava/util/List;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, v0, :cond_1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/agc/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p0, p3, p2, v0}, Lcom/agc/glide/ListPreloader;->preloadItem(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private preloadItem(Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/ListPreloader;->preloadDimensionProvider:Lcom/agc/glide/ListPreloader$PreloadSizeProvider;

    invoke-interface {v0, p1, p2, p3}, Lcom/agc/glide/ListPreloader$PreloadSizeProvider;->getPreloadSize(Ljava/lang/Object;II)[I

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/agc/glide/ListPreloader;->preloadModelProvider:Lcom/agc/glide/ListPreloader$PreloadModelProvider;

    invoke-interface {p3, p1}, Lcom/agc/glide/ListPreloader$PreloadModelProvider;->getPreloadRequestBuilder(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p3, p0, Lcom/agc/glide/ListPreloader;->preloadTargetQueue:Lcom/agc/glide/ListPreloader$PreloadTargetQueue;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/agc/glide/ListPreloader$PreloadTargetQueue;->next(II)Lcom/agc/glide/ListPreloader$PreloadTarget;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget p1, p0, Lcom/agc/glide/ListPreloader;->totalItemCount:I

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    return-void

    :cond_0
    iput p4, p0, Lcom/agc/glide/ListPreloader;->totalItemCount:I

    iget p1, p0, Lcom/agc/glide/ListPreloader;->lastFirstVisible:I

    if-le p2, p1, :cond_1

    add-int/2addr p3, p2

    const/4 p1, 0x1

    invoke-direct {p0, p3, p1}, Lcom/agc/glide/ListPreloader;->preload(IZ)V

    goto :goto_0

    :cond_1
    if-ge p2, p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/agc/glide/ListPreloader;->preload(IZ)V

    :cond_2
    :goto_0
    iput p2, p0, Lcom/agc/glide/ListPreloader;->lastFirstVisible:I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
