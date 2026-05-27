.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;
.source "GPUImageSmoothToonFilter.java"


# instance fields
.field private blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

.field private toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>()V

    .line 33
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    .line 34
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 37
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    .line 38
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 40
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->getFilters()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    return-void
.end method


# virtual methods
.method public onInitialized()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->onInitialized()V

    .line 46
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setBlurSize(F)V

    .line 47
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setThreshold(F)V

    .line 48
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->setQuantizationLevels(F)V

    .line 49
    return-void
.end method

.method public setBlurSize(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 63
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->blurFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;->setBlurSize(F)V

    .line 64
    return-void
.end method

.method public setQuantizationLevels(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 71
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setQuantizationLevels(F)V

    .line 72
    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 59
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setTexelHeight(F)V

    .line 60
    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 55
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setTexelWidth(F)V

    .line 56
    return-void
.end method

.method public setThreshold(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 67
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSmoothToonFilter;->toonFilter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageToonFilter;->setThreshold(F)V

    .line 68
    return-void
.end method
