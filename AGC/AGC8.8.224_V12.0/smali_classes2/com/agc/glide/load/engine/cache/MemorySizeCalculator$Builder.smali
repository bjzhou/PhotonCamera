.class public final Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field static final ARRAY_POOL_SIZE_BYTES:I = 0x400000

.field static final BITMAP_POOL_TARGET_SCREENS:I

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field arrayPoolSizeBytes:I

.field bitmapPoolScreens:F

.field final context:Landroid/content/Context;

.field lowMemoryMaxSizeMultiplier:F

.field maxSizeMultiplier:F

.field memoryCacheScreens:F

.field screenDimensions:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    sget v0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->BITMAP_POOL_TARGET_SCREENS:I

    int-to-float v0, v0

    iput v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->context:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    new-instance v0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Landroid/app/ActivityManager;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;
    .locals 1

    new-instance v0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;)V

    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->activityManager:Landroid/app/ActivityManager;

    return-object p0
.end method

.method public setArrayPoolSize(I)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->arrayPoolSizeBytes:I

    return-object p0
.end method

.method public setBitmapPoolScreens(F)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Bitmap pool screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->bitmapPoolScreens:F

    return-object p0
.end method

.method public setLowMemoryMaxSizeMultiplier(F)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Low memory max size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->lowMemoryMaxSizeMultiplier:F

    return-object p0
.end method

.method public setMaxSizeMultiplier(F)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Size multiplier must be between 0 and 1"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->maxSizeMultiplier:F

    return-object p0
.end method

.method public setMemoryCacheScreens(F)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Memory cache screens must be greater than or equal to 0"

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->memoryCacheScreens:F

    return-object p0
.end method

.method public setScreenDimensions(Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$Builder;->screenDimensions:Lcom/agc/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    return-object p0
.end method
