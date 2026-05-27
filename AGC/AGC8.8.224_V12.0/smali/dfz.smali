.class public final Ldfz;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:Landroid/graphics/Paint;

.field public final f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

.field public final g:Ljava/util/function/BooleanSupplier;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lfha;

.field public l:Lfha;

.field public final m:Ldne;

.field public final n:Ldne;

.field public final o:Ldne;

.field public final p:Ldne;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Ldfz;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Likp;->b(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Ldfz;->b:F

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Likp;->b(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Ldfz;->c:F

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Likp;->b(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, v0, Ldfz;->d:F

    const/4 v3, 0x0

    iput-boolean v3, v0, Ldfz;->h:Z

    iput-boolean v3, v0, Ldfz;->i:Z

    iput-boolean v3, v0, Ldfz;->j:Z

    move-object/from16 v3, p1

    iput-object v3, v0, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    move-object/from16 v4, p2

    iput-object v4, v0, Ldfz;->g:Ljava/util/function/BooleanSupplier;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Likp;->b(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v8, 0xff

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v9, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v2}, Likp;->b(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v6}, Likp;->b(F)I

    move-result v10

    int-to-float v10, v10

    const/4 v11, 0x0

    const/high16 v12, -0x1000000

    invoke-virtual {v4, v9, v11, v10, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    const-string v10, "#FDD663"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Likp;->b(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v9, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v13, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v2}, Likp;->b(F)I

    move-result v13

    int-to-float v13, v13

    invoke-static {v6}, Likp;->b(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v9, v13, v11, v14, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v13, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Likp;->b(F)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v14, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v2}, Likp;->b(F)I

    move-result v14

    int-to-float v14, v14

    invoke-static {v6}, Likp;->b(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v13, v14, v11, v15, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v14, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v14, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-static {v2}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v6}, Likp;->b(F)I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v14, v1, v11, v15, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v15, 0x41600000    # 14.0f

    mul-float v5, v5, v15

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-static {v2}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6}, Likp;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v11, v2, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float v3, v3, v15

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Likp;->b(F)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v6}, Likp;->b(F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2, v3, v11, v5, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Ldne;

    invoke-direct {v3, v9, v2}, Ldne;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iput-object v3, v0, Ldfz;->m:Ldne;

    new-instance v3, Ldne;

    invoke-direct {v3, v14, v2}, Ldne;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iput-object v3, v0, Ldfz;->n:Ldne;

    new-instance v2, Ldne;

    invoke-direct {v2, v4, v1}, Ldne;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iput-object v2, v0, Ldfz;->o:Ldne;

    new-instance v2, Ldne;

    invoke-direct {v2, v13, v1}, Ldne;-><init>(Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iput-object v2, v0, Ldfz;->p:Ldne;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Ldfz;->e:Landroid/graphics/Paint;

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v6}, Likp;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Ldfz;->h:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Ldfz;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ldfz;->k:Lfha;

    iput-object v0, p0, Ldfz;->l:Lfha;

    iput-boolean v1, p0, Ldfz;->j:Z

    iget-object v0, p0, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->invalidate()V

    :cond_0
    return-void
.end method
