.class public Lcom/google/android/apps/camera/ui/hotshot/HotshotView;
.super Ldmt;


# static fields
.field public static final a:Lnak;

.field private static final j:I


# instance fields
.field public final c:Landroid/graphics/RectF;

.field public d:Lhxz;

.field public e:Z

.field public f:F

.field public g:Ljwb;

.field public volatile h:Ljava/util/List;

.field public i:Z

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Paint;

.field private final o:Landroid/graphics/Paint;

.field private final p:Lbgj;

.field private final q:Lbgj;

.field private final r:Limb;

.field private final s:Ljava/util/List;

.field private t:Lbga;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com/google/android/apps/camera/ui/hotshot/HotshotView"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->a:Lnak;

    const/16 v0, 0xc8

    const/16 v1, 0x6b

    const/16 v2, 0xff

    const/16 v3, 0xe8

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Ldmt;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->k:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->m:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->n:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->o:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Lbgj;

    invoke-direct {v3}, Lbgj;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    new-instance v3, Lbgj;

    invoke-direct {v3}, Lbgj;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    new-instance v3, Limb;

    invoke-direct {v3}, Limb;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:Limb;

    sget-object v3, Lhxz;->f:Lhxz;

    iput-object v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Lhxz;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->e:Z

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->f:F

    new-instance v4, Ljvk;

    const/4 v5, 0x0

    new-array v6, v5, [Lhyb;

    invoke-direct {v4, v6}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Ljwb;

    sget v4, Lmvv;->d:I

    sget-object v4, Lmyu;->a:Lmvv;

    iput-object v4, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    iput-boolean v5, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->i:Z

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 p1, -0x10000

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget p1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->j:I

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 p1, 0x40000000    # 2.0f

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->s:Ljava/util/List;

    sget-object v1, Lhxz;->b:Lhxz;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Lhyc;

    invoke-direct {v5, v1, v4}, Lhyc;-><init>(Lhxz;Landroid/graphics/Paint;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lfah;->n:Lfah;

    invoke-static {p2, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Ldmt;->a()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Ldmt;->b:Lkbj;

    iget-object p1, p1, Lkbj;->a:Landroid/graphics/RectF;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    :cond_0
    return-object v0
.end method

.method private final c(F)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Lbga;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Lbga;

    iget-object v0, v0, Lbga;->g:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    float-to-int v0, v0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Lbgj;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    iput p1, v0, Lbgj;->c:F

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    iput p1, v0, Lbgj;->c:F

    return-void
.end method

.method private static final d(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    const v4, 0x3fcccccd    # 1.6f

    mul-float v1, v1, v4

    sub-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    add-float/2addr v2, v1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    add-float/2addr v0, v3

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Ljwb;

    new-array v2, v3, [Lhyb;

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lhyb;

    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    iget-object v5, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->h:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/params/Face;

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-direct {v0, v6, v3}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v6

    const/high16 v7, 0x40000000    # 2.0f

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:Limb;

    iget-object v8, v4, Limb;->a:Lima;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    invoke-virtual {v8, v9}, Lima;->a(F)V

    iget-object v8, v4, Limb;->a:Lima;

    iget v8, v8, Lima;->a:F

    iput v8, v4, Limb;->e:F

    iget-object v8, v4, Limb;->b:Lima;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-virtual {v8, v9}, Lima;->a(F)V

    iget-object v8, v4, Limb;->b:Lima;

    iget v8, v8, Lima;->a:F

    iput v8, v4, Limb;->f:F

    iget-object v8, v4, Limb;->c:Lima;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v8, v9}, Lima;->a(F)V

    iget-object v8, v4, Limb;->c:Lima;

    iget v8, v8, Lima;->a:F

    iput v8, v4, Limb;->g:F

    iget-object v8, v4, Limb;->d:Lima;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-virtual {v8, v6}, Lima;->a(F)V

    iget-object v6, v4, Limb;->d:Lima;

    iget v6, v6, Lima;->a:F

    iput v6, v4, Limb;->h:F

    iget-object v4, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->r:Limb;

    new-instance v6, Landroid/graphics/RectF;

    iget v8, v4, Limb;->e:F

    iget v9, v4, Limb;->g:F

    div-float/2addr v9, v7

    sub-float v10, v8, v9

    iget v11, v4, Limb;->f:F

    iget v4, v4, Limb;->h:F

    div-float/2addr v4, v7

    sub-float v12, v11, v4

    add-float/2addr v8, v9

    add-float/2addr v11, v4

    invoke-direct {v6, v10, v12, v8, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    div-float/2addr v8, v7

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v0, v9, v10}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v9

    invoke-virtual {v5}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v0, v12, v10}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->b(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v11

    iget v12, v11, Landroid/graphics/RectF;->left:F

    iget v13, v9, Landroid/graphics/RectF;->left:F

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    iget v12, v11, Landroid/graphics/RectF;->top:F

    iget v13, v9, Landroid/graphics/RectF;->top:F

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    iget v12, v11, Landroid/graphics/RectF;->right:F

    iget v13, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_6

    iget v12, v11, Landroid/graphics/RectF;->bottom:F

    iget v13, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float/2addr v12, v13

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v13

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v14

    div-float/2addr v13, v14

    iget v14, v11, Landroid/graphics/RectF;->left:F

    iget v15, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    iget v15, v11, Landroid/graphics/RectF;->top:F

    iget v10, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v15, v10

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v15, v11, Landroid/graphics/RectF;->right:F

    iget v3, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v9

    sub-float/2addr v14, v3

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v7

    if-gtz v9, :cond_6

    sub-float/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v7

    if-lez v3, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    iget-boolean v3, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->i:Z

    const v9, 0x3ccccccd    # 0.025f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v3, :cond_4

    const/high16 v3, -0x40c00000    # -0.75f

    add-float/2addr v12, v3

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_4

    const/high16 v10, 0x3f400000    # 0.75f

    goto :goto_1

    :cond_4
    :goto_1
    sub-float/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v9

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v10, 0x1

    :goto_3
    invoke-static {v5}, Lkoj;->a(Landroid/hardware/camera2/params/Face;)Lkoj;

    move-result-object v3

    new-instance v5, Lhyb;

    invoke-direct {v5, v3, v10}, Lhyb;-><init>(Lkoj;Z)V

    aput-object v5, v2, v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->d:Lhxz;

    sget-object v9, Lhxz;->a:Lhxz;

    invoke-virtual {v6, v9}, Lhxz;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-direct {v0, v8}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c(F)V

    iget-object v8, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    if-eqz v6, :cond_8

    iget-object v8, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    iget-object v9, v8, Lbgj;->b:Lblm;

    iget v9, v9, Lblm;->d:F

    float-to-int v9, v9

    if-nez v9, :cond_7

    invoke-virtual {v8}, Lbgj;->p()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    invoke-virtual {v9}, Lbgj;->k()V

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    iget-object v9, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    invoke-virtual {v9}, Lbgj;->i()V

    iget-object v9, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Lbgj;->m(I)V

    :goto_4
    iget-object v9, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    if-eqz v10, :cond_9

    const/4 v6, 0x0

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    const/16 v6, 0x28

    goto :goto_5

    :cond_a
    const/16 v6, 0x14

    :goto_5
    invoke-virtual {v9, v6}, Lbgj;->m(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    invoke-virtual {v6}, Lbgj;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    iget-object v6, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    invoke-virtual {v6}, Lbgj;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v8, v1}, Lbgj;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->g:Ljwb;

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Ldmt;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130018

    invoke-static {v0, v1}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v0

    iget-object v0, v0, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lbga;

    iput-object v0, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->t:Lbga;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->p:Lbgj;

    invoke-virtual {v1, v0}, Lbgj;->q(Lbga;)Z

    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f130015

    invoke-static {v0, v1}, Lbgd;->c(Landroid/content/Context;I)Lbgp;

    move-result-object v0

    iget-object v0, v0, Lbgp;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->q:Lbgj;

    check-cast v0, Lbga;

    invoke-virtual {v1, v0}, Lbgj;->q(Lbga;)Z

    const/high16 v0, 0x43960000    # 300.0f

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->c(F)V

    return-void
.end method
