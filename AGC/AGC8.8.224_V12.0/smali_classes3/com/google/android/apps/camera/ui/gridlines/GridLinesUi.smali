.class public Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;
.super Landroid/view/View;


# static fields
.field private static final c:Lhxp;

.field private static final d:Lhxp;

.field private static final e:Lhxp;

.field private static final f:Lhxp;

.field private static final g:Lhxp;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lhxo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lhxm;

    invoke-direct {v0}, Lhxm;-><init>()V

    sput-object v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->c:Lhxp;

    new-instance v0, Lhxq;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lhxq;-><init>([FZZ)V

    sput-object v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->d:Lhxp;

    new-instance v0, Lhxq;

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    invoke-direct {v0, v2, v3, v3}, Lhxq;-><init>([FZZ)V

    sput-object v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->e:Lhxp;

    new-instance v0, Lhxq;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-direct {v0, v2, v4, v3}, Lhxq;-><init>([FZZ)V

    sput-object v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->f:Lhxp;

    new-instance v0, Lhxq;

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-direct {v0, v1, v3, v3}, Lhxq;-><init>([FZZ)V

    sput-object v0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->g:Lhxp;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3eaaaaab
        0x3f2aaaaa
    .end array-data

    :array_2
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
    .end array-data

    :array_3
    .array-data 4
        0x3ec3910d
        0x3f1e377a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lhxs;->a:Lhxs;

    sget-object v1, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->d:Lhxp;

    sget-object v2, Lhxs;->b:Lhxs;

    sget-object v3, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->e:Lhxp;

    sget-object v4, Lhxs;->c:Lhxs;

    sget-object v5, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->f:Lhxp;

    sget-object v6, Lhxs;->d:Lhxs;

    sget-object v7, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->g:Lhxp;

    invoke-static/range {v0 .. v7}, Lmwa;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->a:Ljava/util/Map;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070253

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->a(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->a(Landroid/content/res/Resources;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Lhxo;

    invoke-direct {p1, p0, p2, v0}, Lhxo;-><init>(Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->b:Lhxo;

    sget-object p2, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->c:Lhxp;

    invoke-virtual {p1, p2}, Lhxo;->a(Lhxp;)V

    return-void
.end method

.method private static a(Landroid/content/res/Resources;)I
    .locals 2

    const v0, 0x7f0604f1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->b:Lhxo;

    iget-object v1, v0, Lhxo;->b:Lhxp;

    iget-boolean v1, v1, Lhxp;->g:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lhxo;->d:Lhxr;

    iget-object v2, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lhxo;->e:Lhxr;

    iget-object v2, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lhxo;->g:Lhxn;

    iget-object v2, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lhxo;->h:Lhxn;

    iget-object v2, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lhxo;->f:Lhxr;

    iget-object v2, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v2}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget-object v1, v0, Lhxo;->i:Lhxn;

    iget-object v0, v0, Lhxo;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, v0}, Lhxn;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/apps/camera/ui/gridlines/GridLinesUi;->b:Lhxo;

    iget-object v0, p1, Lhxo;->a:Landroid/graphics/RectF;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1}, Lhxo;->b()V

    iget-object p1, p1, Lhxo;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
