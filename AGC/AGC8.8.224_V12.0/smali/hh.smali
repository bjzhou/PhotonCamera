.class public Lhh;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/View;

.field public b:I

.field public c:Landroid/widget/PopupWindow$OnDismissListener;

.field private final d:Landroid/content/Context;

.field private final e:Lgw;

.field private final f:Z

.field private final g:I

.field private h:Z

.field private i:Lhi;

.field private j:Lhf;

.field private final k:Landroid/widget/PopupWindow$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgw;Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f040027

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lhh;-><init>(Landroid/content/Context;Lgw;Landroid/view/View;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgw;Landroid/view/View;ZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Lhh;->b:I

    new-instance v0, Ldar;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ldar;-><init>(Lhh;I)V

    iput-object v0, p0, Lhh;->k:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lhh;->d:Landroid/content/Context;

    iput-object p2, p0, Lhh;->e:Lgw;

    iput-object p3, p0, Lhh;->a:Landroid/view/View;

    iput-boolean p4, p0, Lhh;->f:Z

    iput p5, p0, Lhh;->g:I

    return-void
.end method


# virtual methods
.method public final a()Lhf;
    .locals 11

    iget-object v0, p0, Lhh;->j:Lhf;

    if-nez v0, :cond_1

    iget-object v0, p0, Lhh;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-static {v0, v1}, Lhg;->a(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lhh;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Lgq;

    iget-object v1, p0, Lhh;->d:Landroid/content/Context;

    iget-object v2, p0, Lhh;->a:Landroid/view/View;

    iget v3, p0, Lhh;->g:I

    iget-boolean v4, p0, Lhh;->f:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lgq;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lhp;

    iget-object v6, p0, Lhh;->d:Landroid/content/Context;

    iget-object v7, p0, Lhh;->e:Lgw;

    iget-object v8, p0, Lhh;->a:Landroid/view/View;

    iget v9, p0, Lhh;->g:I

    iget-boolean v10, p0, Lhh;->f:Z

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lhp;-><init>(Landroid/content/Context;Lgw;Landroid/view/View;IZ)V

    :goto_0
    iget-object v1, p0, Lhh;->e:Lgw;

    invoke-virtual {v0, v1}, Lhf;->j(Lgw;)V

    iget-object v1, p0, Lhh;->k:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lhf;->p(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lhh;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lhf;->l(Landroid/view/View;)V

    iget-object v1, p0, Lhh;->i:Lhi;

    invoke-virtual {v0, v1}, Lhf;->d(Lhi;)V

    iget-boolean v1, p0, Lhh;->h:Z

    invoke-virtual {v0, v1}, Lhf;->m(Z)V

    iget v1, p0, Lhh;->b:I

    invoke-virtual {v0, v1}, Lhf;->n(I)V

    iput-object v0, p0, Lhh;->j:Lhf;

    :cond_1
    iget-object v0, p0, Lhh;->j:Lhf;

    return-object v0
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lhh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhh;->j:Lhf;

    invoke-virtual {v0}, Lhf;->k()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lhh;->j:Lhf;

    iget-object v0, p0, Lhh;->c:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    iput-boolean p1, p0, Lhh;->h:Z

    iget-object v0, p0, Lhh;->j:Lhf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhf;->m(Z)V

    :cond_0
    return-void
.end method

.method public final e(Lhi;)V
    .locals 1

    iput-object p1, p0, Lhh;->i:Lhi;

    iget-object v0, p0, Lhh;->j:Lhf;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhf;->d(Lhi;)V

    :cond_0
    return-void
.end method

.method public final f(IIZZ)V
    .locals 3

    invoke-virtual {p0}, Lhh;->a()Lhf;

    move-result-object v0

    invoke-virtual {v0, p4}, Lhf;->q(Z)V

    if-eqz p3, :cond_1

    iget p3, p0, Lhh;->b:I

    iget-object p4, p0, Lhh;->a:Landroid/view/View;

    invoke-static {p4}, Lafc;->c(Landroid/view/View;)I

    move-result p4

    invoke-static {p3, p4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p3

    and-int/lit8 p3, p3, 0x7

    const/4 p4, 0x5

    if-ne p3, p4, :cond_0

    iget-object p3, p0, Lhh;->a:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p1, p3

    :cond_0
    invoke-virtual {v0, p1}, Lhf;->o(I)V

    invoke-virtual {v0, p2}, Lhf;->r(I)V

    iget-object p3, p0, Lhh;->d:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    const/high16 p4, 0x42400000    # 48.0f

    mul-float p3, p3, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    float-to-int p3, p3

    sub-int p4, p2, p3

    add-int/2addr p2, p3

    add-int v1, p1, p3

    new-instance v2, Landroid/graphics/Rect;

    sub-int/2addr p1, p3

    invoke-direct {v2, p1, p4, v1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, v0, Lhf;->g:Landroid/graphics/Rect;

    :cond_1
    invoke-virtual {v0}, Lhf;->s()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lhh;->j:Lhf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhf;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lhh;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lhh;->a:Landroid/view/View;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2, v2, v2, v2}, Lhh;->f(IIZZ)V

    return v1
.end method
