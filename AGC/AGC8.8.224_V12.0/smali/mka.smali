.class public Lmka;
.super Landroid/graphics/drawable/Drawable;

# interfaces
.implements Lmko;


# static fields
.field private static final f:Landroid/graphics/Paint;


# instance fields
.field public a:Lmjz;

.field public final b:[Lmkm;

.field public final c:[Lmkm;

.field public final d:Ljava/util/BitSet;

.field public e:Z

.field private final g:Landroid/graphics/Matrix;

.field private final h:Landroid/graphics/Path;

.field private final i:Landroid/graphics/Path;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;

.field private final l:Landroid/graphics/Region;

.field private final m:Landroid/graphics/Region;

.field private n:Lmkf;

.field private final o:Landroid/graphics/Paint;

.field private final p:Landroid/graphics/Paint;

.field private final q:Lmkh;

.field private r:Landroid/graphics/PorterDuffColorFilter;

.field private s:Landroid/graphics/PorterDuffColorFilter;

.field private final t:Landroid/graphics/RectF;

.field private final u:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lmka;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lmka;->f:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lmkf;

    invoke-direct {v0}, Lmkf;-><init>()V

    invoke-direct {p0, v0}, Lmka;-><init>(Lmkf;)V

    return-void
.end method

.method public constructor <init>(Lmjz;)V
    .locals 8

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lmkm;

    iput-object v1, p0, Lmka;->b:[Lmkm;

    new-array v1, v0, [Lmkm;

    iput-object v1, p0, Lmka;->c:[Lmkm;

    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lmka;->d:Ljava/util/BitSet;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lmka;->g:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lmka;->h:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lmka;->i:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmka;->j:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lmka;->k:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lmka;->l:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lmka;->m:Landroid/graphics/Region;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lmka;->o:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lmka;->p:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/high16 v5, -0x1000000

    const/16 v6, 0x44

    invoke-static {v5, v6}, Lacp;->d(II)I

    move-result v6

    const/16 v7, 0x14

    invoke-static {v5, v7}, Lacp;->d(II)I

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lacp;->d(II)I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v0}, Landroid/graphics/Paint;-><init>(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    sget-object v0, Lmkg;->a:Lmkh;

    goto :goto_0

    :cond_0
    new-instance v0, Lmkh;

    invoke-direct {v0}, Lmkh;-><init>()V

    :goto_0
    iput-object v0, p0, Lmka;->q:Lmkh;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lmka;->t:Landroid/graphics/RectF;

    iput-object p1, p0, Lmka;->a:Lmjz;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-direct {p0}, Lmka;->w()Z

    invoke-virtual {p0}, Lmka;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lmka;->v([I)Z

    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lmka;)V

    iput-object p1, p0, Lmka;->u:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method

.method public constructor <init>(Lmkf;)V
    .locals 1

    new-instance v0, Lmjz;

    invoke-direct {v0, p1}, Lmjz;-><init>(Lmkf;)V

    invoke-direct {p0, v0}, Lmka;-><init>(Lmjz;)V

    return-void
.end method

.method private final o()F
    .locals 2

    invoke-direct {p0}, Lmka;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static p(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int p0, p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private final q(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lmka;->getState()[I

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1}, Lmka;->d(I)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_0
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p3, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_2
    :goto_1
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result p2

    invoke-virtual {p0, p2}, Lmka;->d(I)I

    move-result p3

    if-eq p3, p2, :cond_3

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p3, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2

    :cond_3
    :goto_2
    move-object p3, p1

    :goto_3
    return-object p3
.end method

.method private final r()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lmka;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lmka;->o()F

    move-result v0

    iget-object v1, p0, Lmka;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lmka;->k:Landroid/graphics/RectF;

    return-object v0
.end method

.method private final s(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6

    iget-object v0, p0, Lmka;->q:Lmkh;

    iget-object v1, p0, Lmka;->a:Lmjz;

    iget-object v2, v1, Lmjz;->a:Lmkf;

    iget v3, v1, Lmjz;->k:F

    iget-object v4, p0, Lmka;->u:Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object v1, v2

    move v2, v3

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmkh;->b(Lmkf;FLandroid/graphics/RectF;Landroidx/wear/ambient/AmbientMode$AmbientController;Landroid/graphics/Path;)V

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v0, v0, Lmjz;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmka;->g:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lmka;->g:Landroid/graphics/Matrix;

    iget-object v1, p0, Lmka;->a:Lmjz;

    iget v1, v1, Lmjz;->j:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v3

    invoke-virtual {v0, v1, v1, v2, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object p1, p0, Lmka;->g:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object p1, p0, Lmka;->t:Landroid/graphics/RectF;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method private final t(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lmkf;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p4, p5}, Lmkf;->e(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p4, Lmkf;->c:Lmjw;

    invoke-interface {p3, p5}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p4, p0, Lmka;->a:Lmjz;

    iget p4, p4, Lmjz;->k:F

    mul-float p3, p3, p4

    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final u()Z
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final v([I)Z
    .locals 4

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmka;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, p0, Lmka;->a:Lmjz;

    iget-object v3, v3, Lmjz;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lmka;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    iget-object v3, p0, Lmka;->a:Lmjz;

    iget-object v3, v3, Lmjz;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return v1

    :cond_1
    return v2
.end method

.method private final w()Z
    .locals 7

    iget-object v0, p0, Lmka;->r:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lmka;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-object v3, v2, Lmjz;->g:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lmka;->o:Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {p0, v3, v2, v4, v5}, Lmka;->q(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lmka;->r:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-object v3, v2, Lmjz;->f:Landroid/content/res/ColorStateList;

    iget-object v2, v2, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v3, p0, Lmka;->p:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v4, v2, v3, v6}, Lmka;->q(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lmka;->s:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-boolean v2, v2, Lmjz;->u:Z

    iget-object v2, p0, Lmka;->r:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmka;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v1, v0}, Laeb;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    :goto_0
    return v5
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v0, v0, Lmjz;->o:F

    return v0
.end method

.method public final b()F
    .locals 2

    invoke-virtual {p0}, Lmka;->a()F

    move-result v0

    iget-object v1, p0, Lmka;->a:Lmjz;

    iget v1, v1, Lmjz;->p:F

    const/4 v1, 0x0

    add-float/2addr v0, v1

    return v0
.end method

.method public final c(Lmkf;)V
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iput-object p1, v0, Lmjz;->a:Lmkf;

    invoke-virtual {p0}, Lmka;->invalidateSelf()V

    return-void
.end method

.method protected final d(I)I
    .locals 3

    invoke-virtual {p0}, Lmka;->b()F

    move-result v0

    iget-object v1, p0, Lmka;->a:Lmjz;

    iget v2, v1, Lmjz;->n:F

    add-float/2addr v0, v2

    iget-object v1, v1, Lmjz;->b:Lmgx;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Lmgx;->b(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lmka;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lmka;->r:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lmka;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    iget-object v1, p0, Lmka;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget v2, v2, Lmjz;->m:I

    invoke-static {v0, v2}, Lmka;->p(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lmka;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lmka;->s:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lmka;->p:Landroid/graphics/Paint;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget v2, v2, Lmjz;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    iget-object v2, p0, Lmka;->p:Landroid/graphics/Paint;

    iget-object v3, p0, Lmka;->a:Lmjz;

    iget v3, v3, Lmjz;->m:I

    invoke-static {v1, v3}, Lmka;->p(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-boolean v2, p0, Lmka;->e:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmka;->o()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lmka;->a:Lmjz;

    iget-object v3, v3, Lmjz;->a:Lmkf;

    invoke-virtual {v3}, Lmkf;->c()Lmke;

    move-result-object v4

    iget-object v5, v3, Lmkf;->b:Lmjw;

    invoke-static {v5, v2}, Lmjy;->b(Lmjw;F)Lmjw;

    move-result-object v5

    iput-object v5, v4, Lmke;->a:Lmjw;

    iget-object v5, v3, Lmkf;->c:Lmjw;

    invoke-static {v5, v2}, Lmjy;->b(Lmjw;F)Lmjw;

    move-result-object v5

    iput-object v5, v4, Lmke;->b:Lmjw;

    iget-object v5, v3, Lmkf;->e:Lmjw;

    invoke-static {v5, v2}, Lmjy;->b(Lmjw;F)Lmjw;

    move-result-object v5

    iput-object v5, v4, Lmke;->d:Lmjw;

    iget-object v3, v3, Lmkf;->d:Lmjw;

    invoke-static {v3, v2}, Lmjy;->b(Lmjw;F)Lmjw;

    move-result-object v2

    iput-object v2, v4, Lmke;->c:Lmjw;

    invoke-virtual {v4}, Lmke;->a()Lmkf;

    move-result-object v2

    iput-object v2, p0, Lmka;->n:Lmkf;

    iget-object v3, p0, Lmka;->q:Lmkh;

    iget-object v4, p0, Lmka;->a:Lmjz;

    iget v4, v4, Lmjz;->k:F

    invoke-direct {p0}, Lmka;->r()Landroid/graphics/RectF;

    move-result-object v5

    iget-object v6, p0, Lmka;->i:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v4, v5, v6}, Lmkh;->a(Lmkf;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lmka;->h:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lmka;->s(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmka;->e:Z

    :cond_0
    iget-object v2, p0, Lmka;->a:Lmjz;

    iget v3, v2, Lmjz;->q:I

    iget v2, v2, Lmjz;->r:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lmka;->n()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmka;->h:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->isConvex()Z

    :cond_1
    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-object v2, v2, Lmjz;->v:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-object v2, v2, Lmjz;->v:Landroid/graphics/Paint$Style;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v6, p0, Lmka;->o:Landroid/graphics/Paint;

    iget-object v7, p0, Lmka;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lmka;->a:Lmjz;

    iget-object v8, v2, Lmjz;->a:Lmkf;

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v9

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lmka;->t(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lmkf;Landroid/graphics/RectF;)V

    :cond_3
    invoke-direct {p0}, Lmka;->u()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v5, p0, Lmka;->p:Landroid/graphics/Paint;

    iget-object v6, p0, Lmka;->i:Landroid/graphics/Path;

    iget-object v7, p0, Lmka;->n:Lmkf;

    invoke-direct {p0}, Lmka;->r()Landroid/graphics/RectF;

    move-result-object v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lmka;->t(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lmkf;Landroid/graphics/RectF;)V

    :cond_4
    iget-object p1, p0, Lmka;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p1, p0, Lmka;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final e()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->d:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected final f()Landroid/graphics/RectF;
    .locals 2

    iget-object v0, p0, Lmka;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lmka;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lmka;->j:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    new-instance v1, Lmgx;

    invoke-direct {v1, p1}, Lmgx;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lmjz;->b:Lmgx;

    invoke-virtual {p0}, Lmka;->m()V

    return-void
.end method

.method public final getAlpha()I
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v0, v0, Lmjz;->m:I

    return v0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    return-object v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v0, v0, Lmjz;->q:I

    invoke-virtual {p0}, Lmka;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->a:Lmkf;

    iget-object v0, v0, Lmkf;->b:Lmjw;

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lmjw;->a(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v1, p0, Lmka;->a:Lmjz;

    iget v1, v1, Lmjz;->k:F

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lmka;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lmka;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lmka;->s(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lmka;->h:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    invoke-virtual {p0}, Lmka;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lmka;->l:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lmka;->h:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lmka;->s(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    iget-object v0, p0, Lmka;->m:Landroid/graphics/Region;

    iget-object v1, p0, Lmka;->h:Landroid/graphics/Path;

    iget-object v2, p0, Lmka;->l:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    iget-object v0, p0, Lmka;->l:Landroid/graphics/Region;

    iget-object v1, p0, Lmka;->m:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    iget-object v0, p0, Lmka;->l:Landroid/graphics/Region;

    return-object v0
.end method

.method public final h(F)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v1, v0, Lmjz;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lmjz;->o:F

    invoke-virtual {p0}, Lmka;->m()V

    :cond_0
    return-void
.end method

.method public final i(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v1, v0, Lmjz;->d:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lmjz;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lmka;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmka;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmka;->e:Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 3

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v2, v0, Lmjz;->f:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Lmjz;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->d:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    :goto_0
    return v1
.end method

.method public final j(F)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v1, v0, Lmjz;->k:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Lmjz;->k:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmka;->e:Z

    invoke-virtual {p0}, Lmka;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v1, v0, Lmjz;->e:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lmjz;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lmka;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lmka;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public final l(F)V
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iput p1, v0, Lmjz;->l:F

    invoke-virtual {p0}, Lmka;->invalidateSelf()V

    return-void
.end method

.method public final m()V
    .locals 4

    invoke-virtual {p0}, Lmka;->b()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v0

    float-to-double v1, v1

    iget-object v3, p0, Lmka;->a:Lmjz;

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v3, Lmjz;->r:I

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lmka;->a:Lmjz;

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v2, Lmjz;->s:I

    invoke-direct {p0}, Lmka;->w()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lmjz;

    iget-object v1, p0, Lmka;->a:Lmjz;

    invoke-direct {v0, v1}, Lmjz;-><init>(Lmjz;)V

    iput-object v0, p0, Lmka;->a:Lmjz;

    return-object p0
.end method

.method public final n()Z
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v0, v0, Lmjz;->a:Lmkf;

    invoke-virtual {p0}, Lmka;->f()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmkf;->e(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmka;->e:Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 2

    invoke-direct {p0, p1}, Lmka;->v([I)Z

    move-result p1

    invoke-direct {p0}, Lmka;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmka;->invalidateSelf()V

    :cond_2
    return v1
.end method

.method public final setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget v1, v0, Lmjz;->m:I

    if-eq v1, p1, :cond_0

    iput p1, v0, Lmjz;->m:I

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iput-object p1, v0, Lmjz;->c:Landroid/graphics/ColorFilter;

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTint(I)V
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmka;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lmka;->a:Lmjz;

    iput-object p1, v0, Lmjz;->g:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lmka;->w()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lmka;->a:Lmjz;

    iget-object v1, v0, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lmjz;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Lmka;->w()Z

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
