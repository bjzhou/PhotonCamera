.class final Latl;
.super Latn;


# instance fields
.field public a:[I

.field b:F

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:Landroid/graphics/Paint$Cap;

.field i:Landroid/graphics/Paint$Join;

.field j:F

.field k:Liks;

.field l:Liks;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Latn;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Latl;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Latl;->c:F

    iput v1, p0, Latl;->d:F

    iput v0, p0, Latl;->e:F

    iput v1, p0, Latl;->f:F

    iput v0, p0, Latl;->g:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Latl;->h:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Latl;->i:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Latl;->j:F

    return-void
.end method

.method public constructor <init>(Latl;)V
    .locals 2

    invoke-direct {p0, p1}, Latn;-><init>(Latn;)V

    const/4 v0, 0x0

    iput v0, p0, Latl;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Latl;->c:F

    iput v1, p0, Latl;->d:F

    iput v0, p0, Latl;->e:F

    iput v1, p0, Latl;->f:F

    iput v0, p0, Latl;->g:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Latl;->h:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Latl;->i:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Latl;->j:F

    iget-object v0, p1, Latl;->a:[I

    const/4 v0, 0x0

    iput-object v0, p0, Latl;->a:[I

    iget-object v0, p1, Latl;->k:Liks;

    iput-object v0, p0, Latl;->k:Liks;

    iget v0, p1, Latl;->b:F

    iput v0, p0, Latl;->b:F

    iget v0, p1, Latl;->c:F

    iput v0, p0, Latl;->c:F

    iget-object v0, p1, Latl;->l:Liks;

    iput-object v0, p0, Latl;->l:Liks;

    iget v0, p1, Latl;->o:I

    iput v0, p0, Latl;->o:I

    iget v0, p1, Latl;->d:F

    iput v0, p0, Latl;->d:F

    iget v0, p1, Latl;->e:F

    iput v0, p0, Latl;->e:F

    iget v0, p1, Latl;->f:F

    iput v0, p0, Latl;->f:F

    iget v0, p1, Latl;->g:F

    iput v0, p0, Latl;->g:F

    iget-object v0, p1, Latl;->h:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Latl;->h:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, Latl;->i:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Latl;->i:Landroid/graphics/Paint$Join;

    iget p1, p1, Latl;->j:F

    iput p1, p0, Latl;->j:F

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Latl;->l:Liks;

    invoke-virtual {v0}, Liks;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Latl;->k:Liks;

    invoke-virtual {v0}, Liks;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c([I)Z
    .locals 2

    iget-object v0, p0, Latl;->l:Liks;

    invoke-virtual {v0, p1}, Liks;->g([I)Z

    move-result v0

    iget-object v1, p0, Latl;->k:Liks;

    invoke-virtual {v1, p1}, Liks;->g([I)Z

    move-result p1

    or-int/2addr p1, v0

    return p1
.end method

.method getFillAlpha()F
    .locals 1

    iget v0, p0, Latl;->d:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    iget-object v0, p0, Latl;->l:Liks;

    iget v0, v0, Liks;->a:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    iget v0, p0, Latl;->c:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    iget-object v0, p0, Latl;->k:Liks;

    iget v0, v0, Liks;->a:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    iget v0, p0, Latl;->b:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    iget v0, p0, Latl;->f:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    iget v0, p0, Latl;->g:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    iget v0, p0, Latl;->e:F

    return v0
.end method

.method setFillAlpha(F)V
    .locals 0

    iput p1, p0, Latl;->d:F

    return-void
.end method

.method setFillColor(I)V
    .locals 1

    iget-object v0, p0, Latl;->l:Liks;

    iput p1, v0, Liks;->a:I

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, Latl;->c:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 1

    iget-object v0, p0, Latl;->k:Liks;

    iput p1, v0, Liks;->a:I

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Latl;->b:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, Latl;->f:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, Latl;->g:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    iput p1, p0, Latl;->e:F

    return-void
.end method
