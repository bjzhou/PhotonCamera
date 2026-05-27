.class public Lcom/agc/asv/ShadowModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private drawableRes:I

.field private initProcess:F

.field private maxValue:F

.field private minValue:F

.field private process:F

.field private selected:Z

.field private showImage:Z


# direct methods
.method public constructor <init>(IZFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/asv/ShadowModel;->showImage:Z

    iput p1, p0, Lcom/agc/asv/ShadowModel;->drawableRes:I

    iput-boolean p2, p0, Lcom/agc/asv/ShadowModel;->selected:Z

    iput p3, p0, Lcom/agc/asv/ShadowModel;->process:F

    iput p5, p0, Lcom/agc/asv/ShadowModel;->maxValue:F

    iput p4, p0, Lcom/agc/asv/ShadowModel;->minValue:F

    iput p3, p0, Lcom/agc/asv/ShadowModel;->initProcess:F

    return-void
.end method


# virtual methods
.method public getDrawableRes()I
    .locals 1

    iget v0, p0, Lcom/agc/asv/ShadowModel;->drawableRes:I

    return v0
.end method

.method public getInitProcess()F
    .locals 1

    iget v0, p0, Lcom/agc/asv/ShadowModel;->initProcess:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    iget v0, p0, Lcom/agc/asv/ShadowModel;->maxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    iget v0, p0, Lcom/agc/asv/ShadowModel;->minValue:F

    return v0
.end method

.method public getProcess()F
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/agc/asv/ShadowModel;->process:F

    float-to-double v1, v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    return v0
.end method

.method public getProcess100Per()F
    .locals 3

    iget v0, p0, Lcom/agc/asv/ShadowModel;->process:F

    iget v1, p0, Lcom/agc/asv/ShadowModel;->minValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/agc/asv/ShadowModel;->maxValue:F

    iget v2, p0, Lcom/agc/asv/ShadowModel;->minValue:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public isInitValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/asv/ShadowModel;->showImage:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/asv/ShadowModel;->selected:Z

    return v0
.end method

.method public setDrawableRes(I)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/ShadowModel;->drawableRes:I

    return-void
.end method

.method public setInitProcess(F)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/ShadowModel;->initProcess:F

    return-void
.end method

.method public setMaxValue(F)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/ShadowModel;->maxValue:F

    return-void
.end method

.method public setMinValue(F)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/ShadowModel;->minValue:F

    return-void
.end method

.method public setProcess(F)V
    .locals 0

    iput p1, p0, Lcom/agc/asv/ShadowModel;->process:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/agc/asv/ShadowModel;->showImage:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/asv/ShadowModel;->selected:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/asv/ShadowModel;->showImage:Z

    return-void
.end method
