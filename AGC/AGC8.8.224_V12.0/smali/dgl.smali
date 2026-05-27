.class public final Ldgl;
.super Ljava/lang/Object;


# static fields
.field private static final n:F

.field private static final o:F


# instance fields
.field public final a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final b:Landroid/graphics/Paint;

.field public final c:Landroid/graphics/Paint;

.field public final d:Landroid/graphics/Paint;

.field public final e:Landroid/graphics/Paint;

.field public final f:Landroid/graphics/Paint;

.field public final g:Ljava/util/function/BooleanSupplier;

.field public h:Z

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldgl;->n:F

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Ldgl;->o:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4116cbe4

    iput v0, p0, Ldgl;->k:F

    iput v0, p0, Ldgl;->l:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgl;->m:Z

    iput-object p1, p0, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iput-object p2, p0, Ldgl;->g:Ljava/util/function/BooleanSupplier;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldgl;->b:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0xff

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Likp;->b(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, -0x1000000

    invoke-virtual {p1, v4, v6, v5, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldgl;->d:Landroid/graphics/Paint;

    const-string v4, "#FDD663"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v3}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0}, Likp;->b(F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v5, v6, v8, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldgl;->e:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v0}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v5, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v3}, Likp;->b(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v3, v6, v0, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldgl;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Ldgl;->f:Landroid/graphics/Paint;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public static a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 9

    sget v0, Ldgl;->o:F

    invoke-virtual {p4, p0, p1, v0, p3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget p3, Ldgl;->n:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p3, v1

    sub-float v6, p0, v0

    sub-float v4, p0, v2

    move-object v3, p4

    move v5, p1

    move v7, p1

    move-object v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v2, p3, v1

    add-float v6, p0, v0

    add-float v4, p0, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v2, p3, v1

    sub-float v7, p1, v0

    sub-float v5, p1, v2

    move v4, p0

    move v6, p0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float/2addr p3, v1

    add-float v5, p1, v0

    add-float v3, p1, p3

    move-object v1, p4

    move v2, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-boolean v0, p0, Ldgl;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldgl;->h:Z

    if-eqz v0, :cond_0

    const v0, 0x4116cbe4

    iput v0, p0, Ldgl;->k:F

    iput v0, p0, Ldgl;->l:F

    iput-boolean v1, p0, Ldgl;->m:Z

    iget-object v0, p0, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :cond_0
    return-void
.end method
