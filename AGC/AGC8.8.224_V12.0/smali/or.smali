.class public final Lor;
.super Lop;


# static fields
.field private static final b:F


# instance fields
.field private final c:Los;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lor;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lop;-><init>()V

    new-instance v0, Los;

    invoke-direct {v0}, Los;-><init>()V

    iput-object v0, p0, Lor;->c:Los;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lor;->e:Landroid/graphics/Rect;

    return-void
.end method

.method private final v()V
    .locals 4

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lop;->n(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    sget v1, Lor;->b:F

    const v2, 0x3f333333    # 0.7f

    mul-float v1, v1, v2

    invoke-static {v0, v0, v1}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    iget-object v0, p0, Lor;->c:Los;

    iget-object v1, p0, Lor;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lor;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0, v1, v2, v3}, Lop;->u(IILandroid/support/wearable/complications/ComplicationData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->c()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lop;->k(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lor;->c:Los;

    invoke-virtual {v0, p1}, Lop;->a(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lor;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    const v1, 0x3f333333    # 0.7f

    invoke-static {p1, v0, v1}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    iget-object v1, p0, Lor;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lop;->k(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lor;->e:Landroid/graphics/Rect;

    invoke-static {v1}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x50

    return v0

    :cond_0
    const/16 v0, 0x10

    return v0

    :cond_1
    iget-object v0, p0, Lor;->c:Los;

    invoke-virtual {v0}, Lop;->e()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public final i()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Lor;->e:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lop;->k(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lor;->e:Landroid/graphics/Rect;

    invoke-static {v0}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object v0

    :cond_0
    iget-object v0, p0, Lor;->c:Los;

    invoke-virtual {v0}, Lop;->i()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public final j()Landroid/text/Layout$Alignment;
    .locals 1

    invoke-virtual {p0}, Lop;->i()Landroid/text/Layout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method public final n(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0, p1}, Lop;->k(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    const v1, 0x3f733333    # 0.95f

    if-eqz v0, :cond_1

    invoke-static {p1}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p1}, Leu;->g(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1, v1}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p1, p1}, Leu;->f(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1, v1}, Leu;->j(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    return-void
.end method

.method public final o(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lop;->k(Landroid/graphics/Rect;)V

    invoke-static {p1}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->c()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p1}, Leu;->h(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Leu;->i(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_2
    :goto_0
    invoke-static {p1, p1}, Leu;->h(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_3
    iget-object v0, p0, Lor;->c:Los;

    invoke-virtual {v0, p1}, Lop;->o(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lor;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final p(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->i()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/wearable/complications/ComplicationData;->h()Landroid/support/wearable/complications/ComplicationText;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lop;->k(Landroid/graphics/Rect;)V

    invoke-static {p1}, Leu;->k(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p1}, Leu;->h(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-static {p1, p1}, Leu;->e(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void

    :cond_1
    iget-object v0, p0, Lor;->c:Los;

    invoke-virtual {v0, p1}, Lop;->p(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lor;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lor;->d:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public final r(Landroid/support/wearable/complications/ComplicationData;)V
    .locals 0

    iput-object p1, p0, Lop;->a:Landroid/support/wearable/complications/ComplicationData;

    invoke-direct {p0}, Lor;->v()V

    return-void
.end method

.method public final s(I)V
    .locals 0

    invoke-super {p0, p1}, Lop;->s(I)V

    invoke-direct {p0}, Lor;->v()V

    return-void
.end method

.method public final t(I)V
    .locals 0

    invoke-super {p0, p1}, Lop;->t(I)V

    invoke-direct {p0}, Lor;->v()V

    return-void
.end method
