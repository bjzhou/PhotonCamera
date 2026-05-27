.class public abstract Lcom/agc/glide/request/BaseRequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/agc/glide/request/BaseRequestOptions<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DISK_CACHE_STRATEGY:I = 0x4

.field private static final ERROR_ID:I = 0x20

.field private static final ERROR_PLACEHOLDER:I = 0x10

.field private static final FALLBACK:I = 0x2000

.field private static final FALLBACK_ID:I = 0x4000

.field private static final IS_CACHEABLE:I = 0x100

.field private static final ONLY_RETRIEVE_FROM_CACHE:I = 0x80000

.field private static final OVERRIDE:I = 0x200

.field private static final PLACEHOLDER:I = 0x40

.field private static final PLACEHOLDER_ID:I = 0x80

.field private static final PRIORITY:I = 0x8

.field private static final RESOURCE_CLASS:I = 0x1000

.field private static final SIGNATURE:I = 0x400

.field private static final SIZE_MULTIPLIER:I = 0x2

.field private static final THEME:I = 0x8000

.field private static final TRANSFORMATION:I = 0x800

.field private static final TRANSFORMATION_ALLOWED:I = 0x10000

.field private static final TRANSFORMATION_REQUIRED:I = 0x20000

.field private static final UNSET:I = -0x1

.field private static final USE_ANIMATION_POOL:I = 0x100000

.field private static final USE_UNLIMITED_SOURCE_GENERATORS_POOL:I = 0x40000


# instance fields
.field private diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackId:I

.field private fields:I

.field private isAutoCloneEnabled:Z

.field private isCacheable:Z

.field private isLocked:Z

.field private isScaleOnlyOrNoTransform:Z

.field private isTransformationAllowed:Z

.field private isTransformationRequired:Z

.field private onlyRetrieveFromCache:Z

.field private options:Lcom/agc/glide/load/Options;

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/agc/glide/Priority;

.field private resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/agc/glide/load/Key;

.field private sizeMultiplier:F

.field private theme:Landroid/content/res/Resources$Theme;

.field private transformations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation
.end field

.field private useAnimationPool:Z

.field private useUnlimitedSourceGeneratorsPool:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->AUTOMATIC:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    sget-object v0, Lcom/agc/glide/Priority;->NORMAL:Lcom/agc/glide/Priority;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    iput v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    invoke-static {}, Lcom/agc/glide/signature/EmptySignature;->obtain()Lcom/agc/glide/signature/EmptySignature;

    move-result-object v1

    iput-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    new-instance v1, Lcom/agc/glide/load/Options;

    invoke-direct {v1}, Lcom/agc/glide/load/Options;-><init>()V

    iput-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    new-instance v1, Lcom/agc/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/agc/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return-void
.end method

.method private isSet(I)Z
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-static {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result p1

    return p1
.end method

.method private static isSet(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private optionalScaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method private scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/agc/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method private scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->optionalTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    :goto_0
    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return-object p1
.end method

.method private self()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    :cond_1
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    :cond_2
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool:Z

    :cond_3
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    :cond_4
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    :cond_5
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_6
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    iput-object v2, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_7
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_8
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    iput-object v2, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_9
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    :cond_a
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    :cond_b
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    :cond_c
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    :cond_d
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_e
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    iput-object v2, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    :cond_f
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const v2, 0x8000

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    :cond_10
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    :cond_11
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    :cond_12
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p1, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    :cond_13
    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    :cond_14
    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    iput-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    :cond_15
    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    iget-object p1, p1, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/Options;->putAll(Lcom/agc/glide/load/Options;)V

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public autoClone()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->lock()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerCrop()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public centerInside()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public circleCrop()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/BaseRequestOptions;

    new-instance v1, Lcom/agc/glide/load/Options;

    invoke-direct {v1}, Lcom/agc/glide/load/Options;-><init>()V

    iput-object v1, v0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    iget-object v2, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v1, v2}, Lcom/agc/glide/load/Options;->putAll(Lcom/agc/glide/load/Options;)V

    new-instance v1, Lcom/agc/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v1}, Lcom/agc/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v1, v0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v2, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/agc/glide/request/BaseRequestOptions;->isLocked:Z

    iput-boolean v1, v0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public decode(Ljava/lang/Class;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public disallowHardwareConfig()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/agc/glide/load/Option;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public diskCacheStrategy(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/DiskCacheStrategy;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public dontAnimate()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/gif/GifOptions;->DISABLE_ANIMATION:Lcom/agc/glide/load/Option;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->dontTransform()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    and-int/lit16 v0, v0, -0x801

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    const v2, -0x20001

    and-int/2addr v0, v2

    iput-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public downsample(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/agc/glide/load/Option;

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ")TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_FORMAT:Lcom/agc/glide/load/Option;

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public encodeQuality(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/BitmapEncoder;->COMPRESSION_QUALITY:Lcom/agc/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/request/BaseRequestOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->isEquivalentTo(Lcom/agc/glide/request/BaseRequestOptions;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public error(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->error(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x20

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x10

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->fallback(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x4000

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    and-int/lit16 p1, p1, -0x2001

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->fallback(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x2000

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    and-int/lit16 p1, p1, -0x4001

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public fitCenter()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->scaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public format(Lcom/agc/glide/load/DecodeFormat;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/DecodeFormat;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/agc/glide/load/Option;

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    sget-object v1, Lcom/agc/glide/load/resource/gif/GifOptions;->DECODE_FORMAT:Lcom/agc/glide/load/Option;

    invoke-virtual {v0, v1, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public frame(J)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder;->TARGET_FRAME:Lcom/agc/glide/load/Option;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final getDiskCacheStrategy()Lcom/agc/glide/load/engine/DiskCacheStrategy;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method

.method public final getErrorId()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    return v0
.end method

.method public final getErrorPlaceholder()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getFallbackId()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    return v0
.end method

.method public final getOnlyRetrieveFromCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    return v0
.end method

.method public final getOptions()Lcom/agc/glide/load/Options;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    return-object v0
.end method

.method public final getOverrideHeight()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    return v0
.end method

.method public final getOverrideWidth()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    return v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderId()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    return v0
.end method

.method public final getPriority()Lcom/agc/glide/Priority;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    return-object v0
.end method

.method public final getResourceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getSignature()Lcom/agc/glide/load/Key;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    return-object v0
.end method

.method public final getSizeMultiplier()F
    .locals 1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    return v0
.end method

.method public final getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method public final getTransformations()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/agc/glide/load/Transformation<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    return-object v0
.end method

.method public final getUseAnimationPool()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool:Z

    return v0
.end method

.method public final getUseUnlimitedSourceGeneratorsPool()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    invoke-static {v0}, Lcom/agc/glide/util/Util;->hashCode(F)I

    move-result v0

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-boolean v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(ZI)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Lcom/agc/glide/util/Util;->hashCode(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final isAutoCloneEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    return v0
.end method

.method public final isDiskCacheStrategySet()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isEquivalentTo(Lcom/agc/glide/request/BaseRequestOptions;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/request/BaseRequestOptions<",
            "*>;)Z"
        }
    .end annotation

    iget v0, p1, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->errorId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->fallbackId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    iget-boolean v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    iget v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    iget-boolean v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    iget-boolean v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget-boolean v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iget-boolean v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, v1}, Lcom/agc/glide/load/Options;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->resourceClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    iget-object v1, p1, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    invoke-static {v0, v1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    invoke-static {v0, p1}, Lcom/agc/glide/util/Util;->bothNullOrEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isLocked:Z

    return v0
.end method

.method public final isMemoryCacheable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    return v0
.end method

.method public final isPrioritySet()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public isScaleOnlyOrNoTransform()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    return v0
.end method

.method public final isSkipMemoryCacheSet()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isTransformationAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    return v0
.end method

.method public final isTransformationRequired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    return v0
.end method

.method public final isTransformationSet()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->isSet(I)Z

    move-result v0

    return v0
.end method

.method public final isValidOverride()Z
    .locals 2

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    iget v1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/agc/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    return v0
.end method

.method public lock()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isLocked:Z

    invoke-direct {p0}, Lcom/agc/glide/request/BaseRequestOptions;->self()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public onlyRetrieveFromCache(Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->onlyRetrieveFromCache:Z

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x80000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalCenterCrop()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->optionalTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCenterInside()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_INSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CenterInside;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CenterInside;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->optionalScaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalCircleCrop()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->CENTER_OUTSIDE:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/CircleCrop;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/CircleCrop;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->optionalTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalFitCenter()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->FIT_CENTER:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    new-instance v1, Lcom/agc/glide/load/resource/bitmap/FitCenter;

    invoke-direct {v1}, Lcom/agc/glide/load/resource/bitmap/FitCenter;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->optionalScaleOnlyTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0
.end method

.method public optionalTransform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final optionalTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->optionalTransform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->downsample(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public optionalTransform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/agc/glide/load/Transformation<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p1}, Lcom/agc/glide/request/BaseRequestOptions;->override(II)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public override(II)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->override(II)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideWidth:I

    iput p2, p0, Lcom/agc/glide/request/BaseRequestOptions;->overrideHeight:I

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->placeholder(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x80

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x40

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->placeholderId:I

    and-int/lit16 p1, p1, -0x81

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Priority;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->priority(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/Priority;

    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->priority:Lcom/agc/glide/Priority;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public removeOption(Lcom/agc/glide/load/Option;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Option<",
            "*>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->removeOption(Lcom/agc/glide/load/Option;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, p1}, Lcom/agc/glide/load/Options;->remove(Lcom/agc/glide/load/Option;)Lcom/agc/glide/load/Options;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isLocked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/request/BaseRequestOptions;->self()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/Option<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->options:Lcom/agc/glide/load/Options;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/Options;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/load/Options;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public signature(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Key;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->signature(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/Key;

    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->signature:Lcom/agc/glide/load/Key;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public sizeMultiplier(F)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier:F

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->isCacheable:Z

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public theme(Landroid/content/res/Resources$Theme;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->theme(Landroid/content/res/Resources$Theme;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->theme:Landroid/content/res/Resources$Theme;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    sget-object v0, Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;->THEME:Lcom/agc/glide/load/Option;

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_1
    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    sget-object p1, Lcom/agc/glide/load/resource/drawable/ResourceDrawableDecoder;->THEME:Lcom/agc/glide/load/Option;

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->removeOption(Lcom/agc/glide/load/Option;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public timeout(I)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Lcom/agc/glide/load/model/stream/HttpGlideUrlLoader;->TIMEOUT:Lcom/agc/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/agc/glide/load/resource/bitmap/DrawableTransformation;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/DrawableTransformation;-><init>(Lcom/agc/glide/load/Transformation;Z)V

    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/bitmap/DrawableTransformation;->asBitmapDrawable()Lcom/agc/glide/load/Transformation;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lcom/agc/glide/load/Transformation;)V

    const-class p1, Lcom/agc/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, p1, v0, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public final transform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->downsample(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    invoke-virtual {p0, p2}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/agc/glide/load/Transformation<",
            "TY;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Lcom/agc/glide/load/Transformation<",
            "TY;>;Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Ljava/lang/Class;Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->transformations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    or-int/lit16 p1, p1, 0x800

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationAllowed:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isScaleOnlyOrNoTransform:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    iput-boolean p2, p0, Lcom/agc/glide/request/BaseRequestOptions;->isTransformationRequired:Z

    :cond_1
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public varargs transform([Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/agc/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/MultiTransformation;-><init>([Lcom/agc/glide/load/Transformation;)V

    invoke-virtual {p0, v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public varargs transforms([Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/agc/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/MultiTransformation;-><init>([Lcom/agc/glide/load/Transformation;)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public useAnimationPool(Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool:Z

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method

.method public useUnlimitedSourceGeneratorsPool(Z)Lcom/agc/glide/request/BaseRequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/agc/glide/request/BaseRequestOptions;->isAutoCloneEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->clone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1

    :cond_0
    iput-boolean p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->useUnlimitedSourceGeneratorsPool:Z

    iget p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/agc/glide/request/BaseRequestOptions;->fields:I

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->selfOrThrowIfLocked()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    return-object p1
.end method
