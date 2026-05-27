.class public final Lmiv;
.super Lmiz;


# static fields
.field public static final synthetic c:I

.field private static final j:Laiu;


# instance fields
.field public final a:Lmja;

.field public b:F

.field private final k:Laiw;

.field private final l:Laiv;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiu;

    invoke-direct {v0}, Lmiu;-><init>()V

    sput-object v0, Lmiv;->j:Laiu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lmim;Lmja;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiz;-><init>(Landroid/content/Context;Lmim;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiv;->m:Z

    iput-object p3, p0, Lmiv;->a:Lmja;

    iput-object p0, p3, Lmja;->b:Lmiz;

    new-instance p1, Laiw;

    invoke-direct {p1}, Laiw;-><init>()V

    iput-object p1, p0, Lmiv;->k:Laiw;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Laiw;->c(F)V

    const/high16 p3, 0x42480000    # 50.0f

    invoke-virtual {p1, p3}, Laiw;->e(F)V

    new-instance p3, Laiv;

    sget-object v0, Lmiv;->j:Laiu;

    invoke-direct {p3, p0, v0}, Laiv;-><init>(Ljava/lang/Object;Laiu;)V

    iput-object p3, p0, Lmiv;->l:Laiv;

    iput-object p1, p3, Laiv;->q:Laiw;

    invoke-virtual {p0, p2}, Lmiz;->e(F)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lmiv;->b:F

    invoke-virtual {p0}, Lmiv;->invalidateSelf()V

    return-void
.end method

.method public final b(ZZZ)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lmiz;->b(ZZZ)Z

    move-result p1

    iget-object p2, p0, Lmiv;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2}, Lljr;->y(Landroid/content/ContentResolver;)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lmiv;->m:Z

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-boolean p3, p0, Lmiv;->m:Z

    iget-object p3, p0, Lmiv;->k:Laiw;

    const/high16 v0, 0x42480000    # 50.0f

    div-float/2addr v0, p2

    invoke-virtual {p3, v0}, Laiw;->e(F)V

    :goto_0
    return p1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lmiv;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lmiv;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lmiv;->a:Lmja;

    invoke-virtual {p0}, Lmiv;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0}, Lmiz;->c()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lmja;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lmiv;->a:Lmja;

    iget-object v1, p0, Lmiv;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Lmja;->e(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lmiv;->e:Lmim;

    iget-object v0, v0, Lmim;->c:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Lmiz;->i:I

    invoke-static {v0, v1}, Lkwp;->k(II)I

    move-result v7

    iget-object v2, p0, Lmiv;->a:Lmja;

    iget-object v4, p0, Lmiv;->h:Landroid/graphics/Paint;

    const/4 v5, 0x0

    iget v6, p0, Lmiv;->b:F

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lmja;->d(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFI)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lmiv;->a:Lmja;

    invoke-virtual {v0}, Lmja;->a()I

    move-result v0

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lmiv;->a:Lmja;

    invoke-virtual {v0}, Lmja;->b()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final jumpToCurrentState()V
    .locals 2

    iget-object v0, p0, Lmiv;->l:Laiv;

    invoke-virtual {v0}, Laiv;->k()V

    invoke-virtual {p0}, Lmiv;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lmiv;->a(F)V

    return-void
.end method

.method protected final onLevelChange(I)Z
    .locals 3

    iget-boolean v0, p0, Lmiv;->m:Z

    const v1, 0x461c4000    # 10000.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiv;->l:Laiv;

    invoke-virtual {v0}, Laiv;->k()V

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lmiv;->a(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiv;->l:Laiv;

    iget v2, p0, Lmiv;->b:F

    mul-float v2, v2, v1

    invoke-virtual {v0, v2}, Lais;->i(F)V

    iget-object v0, p0, Lmiv;->l:Laiv;

    int-to-float p1, p1

    iget-boolean v1, v0, Lais;->m:Z

    if-eqz v1, :cond_1

    iput p1, v0, Laiv;->r:F

    goto :goto_0

    :cond_1
    iget-object v1, v0, Laiv;->q:Laiw;

    if-nez v1, :cond_2

    new-instance v1, Laiw;

    invoke-direct {v1, p1}, Laiw;-><init>(F)V

    iput-object v1, v0, Laiv;->q:Laiw;

    :cond_2
    iget-object v1, v0, Laiv;->q:Laiw;

    invoke-virtual {v1, p1}, Laiw;->d(F)V

    invoke-virtual {v0}, Lais;->d()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
